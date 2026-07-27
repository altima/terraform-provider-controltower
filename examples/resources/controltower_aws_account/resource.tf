resource "controltower_aws_account" "account" {
  name                = "Example Account"
  email               = "aws-admin@example.com"
  organizational_unit = "Sandbox"

  organizational_unit_id_on_delete = "ou-some-id"

  sso {
    first_name = "John"
    last_name  = "Doe"
    email      = "john.doe@example.com"
  }
}

# Example with nested organizational unit (level 2+)
# For nested OUs, you must use the format "OU_NAME (OU_ID)"
resource "controltower_aws_account" "nested_ou_account" {
  name                = "Nested OU Account"
  email               = "aws-admin-nested@example.com"
  organizational_unit = "Sandbox (ou-xfe5-a8hb8ml8)"

  sso {
    first_name = "Jane"
    last_name  = "Smith"
    email      = "jane.smith@example.com"
  }
}