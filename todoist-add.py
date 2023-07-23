from todoist_api_python.api import TodoistAPI
import os


def main(apikey, content):
    api = TodoistAPI(apikey)
    task = api.add_task(content=content, due_string="today")
    print(task)


if __name__ == "__main__":
    apikey = os.environ['TODOIST']
    content = input("Enter task content: ")
    main(apikey, content)
