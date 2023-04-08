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
    public class PricingsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public PricingsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Pricings
        public async Task<IActionResult> Index()
        {
              return _context.Pricings != null ? 
                          View(await _context.Pricings.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.Pricings'  is null.");
        }

        // GET: Pricings/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Pricings == null)
            {
                return NotFound();
            }

            var pricing = await _context.Pricings
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pricing == null)
            {
                return NotFound();
            }

            return View(pricing);
        }

        // GET: Pricings/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Pricings/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,RoomTypeId,Price,Day,Month,Year")] Pricing pricing)
        {
            if (ModelState.IsValid)
            {
                _context.Add(pricing);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(pricing);
        }

        // GET: Pricings/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Pricings == null)
            {
                return NotFound();
            }

            var pricing = await _context.Pricings.FindAsync(id);
            if (pricing == null)
            {
                return NotFound();
            }
            return View(pricing);
        }

        // POST: Pricings/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,RoomTypeId,Price,Day,Month,Year")] Pricing pricing)
        {
            if (id != pricing.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(pricing);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PricingExists(pricing.Id))
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
            return View(pricing);
        }

        // GET: Pricings/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Pricings == null)
            {
                return NotFound();
            }

            var pricing = await _context.Pricings
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pricing == null)
            {
                return NotFound();
            }

            return View(pricing);
        }

        // POST: Pricings/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Pricings == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Pricings'  is null.");
            }
            var pricing = await _context.Pricings.FindAsync(id);
            if (pricing != null)
            {
                _context.Pricings.Remove(pricing);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PricingExists(int id)
        {
          return (_context.Pricings?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
