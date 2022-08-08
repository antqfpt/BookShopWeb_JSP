package com.bookshopweb.servlet.client;

import com.bookshopweb.beans.Product;
import com.bookshopweb.beans.User;
import com.bookshopweb.beans.WishlistItem;
import com.bookshopweb.service.ProductService;
import com.bookshopweb.service.WishlistItemService;
import com.bookshopweb.utils.Protector;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "WishlistServlet", value = "/wishlist")
public class WishlistServlet extends HttpServlet {
    private final WishlistItemService wishlistItemService = new WishlistItemService();
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("currentUser");

        if (user != null) {
            List<WishlistItem> wishlistItems = Protector.of(() -> wishlistItemService.getByUserId(user.getId()))
                    .get(ArrayList::new);

            for (WishlistItem wishlistItem : wishlistItems) {
                wishlistItem.setProduct(productService.getById(wishlistItem.getProductId()).orElseGet(Product::new));
            }

            request.setAttribute("wishlistItems", wishlistItems);
        }

        request.getRequestDispatcher("/WEB-INF/views/wishlistView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Protector.of(() -> Long.parseLong(request.getParameter("id"))).get(0L);
        Protector.of(() -> wishlistItemService.delete(id));
        response.sendRedirect(request.getContextPath() + "/wishlist");
    }
}
