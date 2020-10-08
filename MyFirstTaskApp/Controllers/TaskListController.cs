using MyFirstTaskApp.Databases;
using MyFirstTaskApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;


namespace MyFirstTaskApp.Controllers
{
    public class TaskListController : Controller
    {

       
        // GET: TaskList
        public ActionResult Index()
        {

            List<myTask> taskList = TaskDB.getAllTasks();
                        
            return View(taskList);
        }

        // GET: TaskList/Details/5
        public ActionResult Details(int id)
        {
            List<myTask> taskList = TaskDB.getAllTasks();
            myTask selectedTask = taskList.Find(x => x.Id == id);
            return View(selectedTask);
        }

        // GET: TaskList/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TaskList/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here
                myTask taskItem = new myTask();
                taskItem.Name =  collection["Name"];
                taskItem.DueDate = Convert.ToDateTime(collection["DueDate"]);
                taskItem.Status = collection["Status"];

                TaskDB.AddTask(taskItem);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TaskList/Edit/5
        public ActionResult Edit(int id)
        {
          
            return View();
        }

        // POST: TaskList/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                //Creates object mytask and adds task information
                myTask taskItem = new myTask();
                taskItem.Name =  collection["Name"];
                taskItem.DueDate = Convert.ToDateTime(collection["DueDate"]);
                taskItem.Status = collection["Status"];

                TaskDB.AddTask(taskItem);

             
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TaskList/Delete/5
        public ActionResult Delete(int id = 0)
        {
            
            return View();
        }

        // POST: TaskList/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
