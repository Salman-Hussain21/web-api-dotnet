using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using StudentWebapi.Models;

namespace StudentWebapi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private readonly StudentWebapiContext db;

        public StudentController(StudentWebapiContext db)
        {
            this.db= db;
        }
        [HttpGet]
        public IActionResult GetStudent()
        {
           var Students= db.Students.ToList();

            return Ok(Students);
        }

        [HttpGet("{id}")]
        public IActionResult GetStudent(int id)
        {

            var Student = db.Students.Find(id);
            if(Student == null)
            {
                return NotFound();
            }
            return Ok(Student);
        }



        [HttpPost]
        public IActionResult CreateStudent(Student student)
        {

            db.Students.Add(student);
            db.SaveChanges();
            return Ok(student);
        }



        [HttpDelete("{id}")]
        public IActionResult DeleteStudent(int id)
        {

            var student=db.Students.Find(id);

            if(student == null)
            {
                return NotFound();
            }

            db.Students.Remove(student);
            db.SaveChanges();
            return Ok("deleted");
        }




        [HttpPut("{id}")]
        public IActionResult updateStudent(int id,Student? stu)
        {

            if (stu.StuId != id)
            {
                return BadRequest();
            }



            db.Entry(stu).State = EntityState.Modified;
            db.SaveChanges();
            return Ok(stu);
           
        }



    }
}
