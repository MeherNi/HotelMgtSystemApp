using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using HotelMgtSystemApp.Areas.Identity.Data;
using HotelMgtSystemApp.Models.EntityModels;

namespace HotelMgtSystemApp.Controllers
{
    public class FloorSupervisorsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public FloorSupervisorsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: FloorSupervisors
        public async Task<IActionResult> Index()
        {
              return _context.FloorSupervisors != null ? 
                          View(await _context.FloorSupervisors.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.FloorSupervisors'  is null.");
        }

        // GET: FloorSupervisors/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.FloorSupervisors == null)
            {
                return NotFound();
            }

            var floorSupervisor = await _context.FloorSupervisors
                .FirstOrDefaultAsync(m => m.Id == id);
            if (floorSupervisor == null)
            {
                return NotFound();
            }

            return View(floorSupervisor);
        }

        // GET: FloorSupervisors/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: FloorSupervisors/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,FullName,EmailAddress,ContactNumber,Photo,Note")] FloorSupervisor floorSupervisor)
        {
            if (ModelState.IsValid)
            {
                _context.Add(floorSupervisor);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(floorSupervisor);
        }

        // GET: FloorSupervisors/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.FloorSupervisors == null)
            {
                return NotFound();
            }

            var floorSupervisor = await _context.FloorSupervisors.FindAsync(id);
            if (floorSupervisor == null)
            {
                return NotFound();
            }
            return View(floorSupervisor);
        }

        // POST: FloorSupervisors/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,FullName,EmailAddress,ContactNumber,Photo,Note")] FloorSupervisor floorSupervisor)
        {
            if (id != floorSupervisor.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(floorSupervisor);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!FloorSupervisorExists(floorSupervisor.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(floorSupervisor);
        }

        // GET: FloorSupervisors/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.FloorSupervisors == null)
            {
                return NotFound();
            }

            var floorSupervisor = await _context.FloorSupervisors
                .FirstOrDefaultAsync(m => m.Id == id);
            if (floorSupervisor == null)
            {
                return NotFound();
            }

            return View(floorSupervisor);
        }

        // POST: FloorSupervisors/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.FloorSupervisors == null)
            {
                return Problem("Entity set 'ApplicationDbContext.FloorSupervisors'  is null.");
            }
            var floorSupervisor = await _context.FloorSupervisors.FindAsync(id);
            if (floorSupervisor != null)
            {
                _context.FloorSupervisors.Remove(floorSupervisor);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool FloorSupervisorExists(int id)
        {
          return (_context.FloorSupervisors?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
