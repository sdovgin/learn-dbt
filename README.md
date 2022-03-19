## This Project follows the learn-dbt Udemy course that goes over the fundamentals of dbt

### Using the starter project

Try running the following commands:
- dbt run
- dbt test

### Profiles.yml Local Setup 
When cloning this repo make sure that your profiles.yml is setup correctly. My profiles.yml file information is as follows

tutorial-snowflake-db:
  target: dev
  outputs:
    dev:
      account: {your_account_value}.us-east-2.aws
      database: analytics
      password: {your_password} 
      role: transform_role
      schema: dbt
      threads: 1
      type: snowflake
      user: {your_user} 
      warehouse: transform_wh

IMPORTANT: Make sure that the account is correct. Depending on the aws region that you are in the account identifier will be different. Some have .aws appended to the end while others don't. Go to the following link under the section for Account Identifier Formats by Cloud Platform and Region to determine which you should use.
Link: https://docs.snowflake.com/en/user-guide/admin-account-identifier.html#account-identifier-formats-by-cloud-platform-and-region

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
