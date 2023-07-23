from todoist_api_python.api import TodoistAPI
import os


def main(apikey):
    api = TodoistAPI(apikey)
    tasks = api.get_tasks(filter="due: today")
    for i, task in enumerate(tasks):
        print(i, task.content)
    if len(tasks) == 0:
        print("No tasks found")
    return

if __name__ == "__main__":
    apikey = os.environ['TODOIST']
    main(apikey)
