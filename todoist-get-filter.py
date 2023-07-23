from todoist_api_python.api import TodoistAPI
import os


def main(apikey, filter):
    api = TodoistAPI(apikey)
    tasks = api.get_tasks(filter=filter)
    for i, task in enumerate(tasks):
        print(i, task.content)
    if len(tasks) == 0:
        print("No tasks found")
    return

if __name__ == "__main__":
    apikey = os.environ['TODOIST']
    filter = input("Enter a filter string: ")
    main(apikey, filter)
