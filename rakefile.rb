require 'rake'
require 'aws-sdk'

# Pack an artifact for elastic beanstalk
task :pack_artifact do 
    input_path = 'node-sample/'
    output_dir = 'target/'
    artifact_name = 'artifact'
    artifact_format = 'zip'

    output_path = "#{output_dir}#{artifact_name}.#{artifact_format}"

    # specifying the file path as it's own variable yielded an archive containing the node-sample directory -- but we
    # want an archive containing the CONTENTS of the node-sample directory. Using the <revision>:<path> syntax
    # fixes this behavior, yielding an archive without the extra directory level.
    cmd = "git archive --format=#{artifact_format} HEAD:#{input_path} > #{output_path}"

    sh cmd
end

# upload a packed artifact to s3.
task :upload_artifact do
    artifact_path = './target/artifact.zip'
    app_name = 'node-sample-app-2'
    version = '0.0.1.2'

    s3_artifact_name = "beanstalk/#{app_name}_#{version}.zip"

    aws_access_key = ""
    aws_secret_key = ""
    s3 = Aws::S3::Resource.new(region: 'us-east-1', credentials: Aws::Credentials.new(aws_access_key, aws_secret_key))
    s3_bucket = s3.create_bucket(bucket: app_name)

    s3_artifact = s3_bucket.object(s3_artifact_name)
    s3_artifact.upload_file(artifact_path)
end

task :deploy do 
    terraform_path = './terraform/beanstalk-node/'
    var_file_path = './terraform/sample-app-v1.tfvars'

    cmd = "terraform apply -var-file=#{var_file_path} #{terraform_path}"

    sh cmd
end

task :promote_version => [:pack_artifact, :upload_artifact] do
end

task :deploy_version => [:promote_version, :deploy]