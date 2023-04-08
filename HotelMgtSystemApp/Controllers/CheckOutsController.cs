using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using HotelMgtSystemApp.Areas.Identity.Data;
using HotelMgtSystemApp.Models.EntityModels;
using Microsoft.AspNetCore.Authorization;

namespace HotelMgtSystemApp.Controllers
{
    [Authorize]
    public class CheckOutsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CheckOutsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: CheckOuts
        public async Task<IActionResult> Index()
        {
              return _context.CheckOuts != null ? 
                          View(await _context.CheckOuts.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.CheckOuts'  is null.");
        }

        // GET: CheckOuts/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.CheckOuts == null)
            {
                return NotFound();
            }

            var checkOut = await _context.CheckOuts
                .FirstOrDefaultAsync(m => m.Id == id);
            if (checkOut == null)
            {
                return NotFound();
            }

            return View(checkOut);
        }

        // GET: CheckOuts/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: CheckOuts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,GuestId,BookingId,CheckInDate,CheckOutDate,TotalBill")] CheckOut checkOut)
        {
            if (ModelState.IsValid)
            {
                _context.Add(checkOut);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(checkOut);
        }

        // GET: CheckOuts/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.CheckOuts == null)
            {
                return NotFound();
            }

            var checkOut = await _context.CheckOuts.FindAsync(id);
            if (checkOut == null)
            {
                return NotFound();
            }
            return View(checkOut);
        }

        // POST: CheckOuts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,GuestId,BookingId,CheckInDate,CheckOutDate,TotalBill")] CheckOut checkOut)
        {
            if (id != checkOut.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(checkOut);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CheckOutExists(checkOut.Id))
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
            return View(checkOut);
        }

        // GET: CheckOuts/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.CheckOuts == null)
            {
                return NotFound();
            }

            var checkOut = await _context.CheckOuts
                .FirstOrDefaultAsync(m => m.Id == id);
            if (checkOut == null)
            {
                return NotFound();
            }

            return View(checkOut);
        }

        // POST: CheckOuts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.CheckOuts == null)
            {
                return Problem("Entity set 'ApplicationDbContext.CheckOuts'  is null.");
            }
            var checkOut = await _context.CheckOuts.FindAsync(id);
            if (checkOut != null)
            {
                _context.CheckOuts.Remove(checkOut);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CheckOutExists(int id)
        {
          return (_context.CheckOuts?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
