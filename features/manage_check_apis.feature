# Feature: Manage check_apis
#   In order to use api 
#   by users 
#   wants CRUD + Search
#   @get
#   Scenario Outline: Verifying GET on api
#     Given On server "https://qaaztec.rollstream.com/api/v2000"
#     And As user "<username>" with password "<password>"
#     And I Want to get "<resource>"  with id "<id>"
#     Then It should respond with "<response_code>"
#   Examples:
#     | username                                  | password      | resource  |   id  | response_code |
#     | sample@example.org                        | safe4now      | contact   |   1   | 200 |
#     | aju+project_admin@qamail1.rollstream.com  | rollstream123 | contact   |   1   | 401 |
#     | sample@example.org                        | safe4now      | contact   |   7   | 200 |
#     | aju+contact@qamail1.rollstream.com        | rollstream123 | contact   |   1   | 401 |
#     | sample@example.org                        | safe4now      | contact   |   11  | 200 |
#     | sample@example.org                        | safe4now      | company   |   1   | 200 |
#     | aju+project_admin@qamail1.rollstream.com  | rollstream123 | company   |   1   | 401 |
#     | sample@example.org                        | safe4now      | company   |   5   | 404 |
#     | sample@example.org                        | safe4now      | company   |   2  | 200 |
#     | aju+employee_1@qamail1.rollstream.com     | rollstream123 | company   |   1   | 401 |
#     | sample@example.org                        | safe4now      | contact   |   -1  | 404 |
#     | sample@example.org                        | safe4now      | contact   |   a   | 404 |
# 
#   @search
#   Scenario Outline: Verifying SEARCH on api
#     Given On server "https://qawiley.rollstream.com/api/v2000"
#     And As user "<username>" with password "<password>"
#     And I Want to search "<resource>"  file "<name>"
#     Then It should respond with "<response_code>"
#   Examples:
#     | username                                   | password      | resource    |   name    | response_code |
#     | sbourdeau@qamail1.rollstream.com  | rollstream123     | contact     |   search  | 200 |
#     | sbourdeau@qamail1.rollstream.com  | rollstream123 | contact     |   search  | 401 |
#     | sbourdeau@qamail1.rollstream.com  | rollstream123 | contact     |   search  | 401 |
#     | sbourdeau@qamail1.rollstream.com  | rollstream123 | contact     |   search  | 401 |
#     | sbourdeau@qamail1.rollstream.com  | rollstream123      | company     |   search  | 200 |
#     | sbourdeau@qamail1.rollstream.com  | rollstream123 | company     |   search  | 401 |
#     | sbourdeau@qamail1.rollstream.com  | rollstream123 | company     |   search  | 401 |
#     | sbourdeau@qamail1.rollstream.com  | rollstream123      | contact     |   invalid_contact_search     | 422 |
#   @put
#   Scenario Outline: Verifying PUT on api
#     Given On server "https://qaaztec.rollstream.com/api/v2000"
#     And As user "<username>" with password "<password>"
#     And I Want to update "<resource>"  with "<id>" file "<name>"
#     Then It should respond with "<response_code>"
#   Examples:
#     | username                                  | password      | resource    |   id   |  name   | response_code |
#     | aju@rollstream.com                        | rollstream123 | company     |    1   | up_company  | 401 |
#     | aju+project_admin@qamail1.rollstream.com  | rollstream123 | company     |    1   | up_company  | 401 |
#     | aju+project_admin_2@qamail1.rollstream.com | rollstream123 | company   |    1   | up_company  | 401 |
#     | sample@example.org                        | safe4now      | company     |    1   | up_company  | 200 |
#     | aju+contact@qamail1.rollstream.com        | rollstream123 | company     |    1   | up_company  | 401 |
#     | aju+employee_1@qamail1.rollstream.com     | rollstream123 | company     |    1   | up_company  | 401 |
# 
#   @destroy
#   Scenario Outline: Verifying GET on api
#     Given On server "https://qaaztec.rollstream.com/api/v2000"
#     And As user "<username>" with password "<password>"
#     And I Want to  create "<resource>"   using "<name>"
#     Then It should respond with "<response_code>"
#   Examples:
#     | username                                  | password            | resource        |   name        | response_code |
#     | sampkljhjtr  | safe4now      | contact         |   con_create  | 200 |
