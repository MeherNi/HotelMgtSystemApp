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
    public class BookingServicesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public BookingServicesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: BookingServices
        public async Task<IActionResult> Index()
        {
              return _context.BookingServices != null ? 
                          View(await _context.BookingServices.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.BookingServices'  is null.");
        }

        // GET: BookingServices/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.BookingServices == null)
            {
                return NotFound();
            }

            var bookingService = await _context.BookingServices
                .FirstOrDefaultAsync(m => m.Id == id);
            if (bookingService == null)
            {
                return NotFound();
            }

            return View(bookingService);
        }

        // GET: BookingServices/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: BookingServices/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,BookingId,ServiceId,TypeId,GuestNumber,NightNumber,Price")] BookingService bookingService)
        {
            if (ModelState.IsValid)
            {
                _context.Add(bookingService);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(bookingService);
        }

        // GET: BookingServices/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.BookingServices == null)
            {
                return NotFound();
            }

            var bookingService = await _context.BookingServices.FindAsync(id);
            if (bookingService == null)
            {
                return NotFound();
            }
            return View(bookingService);
        }

        // POST: BookingServices/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,BookingId,ServiceId,TypeId,GuestNumber,NightNumber,Price")] BookingService bookingService)
        {
            if (id != bookingService.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bookingService);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BookingServiceExists(bookingService.Id))
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
            return View(bookingService);
        }

        // GET: BookingServices/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.BookingServices == null)
            {
                return NotFound();
            }

            var bookingService = await _context.BookingServices
                .FirstOrDefaultAsync(m => m.Id == id);
            if (bookingService == null)
            {
                return NotFound();
            }

            return View(bookingService);
        }

        // POST: BookingServices/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.BookingServices == null)
            {
                return Problem("Entity set 'ApplicationDbContext.BookingServices'  is null.");
            }
            var bookingService = await _context.BookingServices.FindAsync(id);
            if (bookingService != null)
            {
                _context.BookingServices.Remove(bookingService);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BookingServiceExists(int id)
        {
          return (_context.BookingServices?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
