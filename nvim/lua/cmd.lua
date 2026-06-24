vim.api.nvim_create_user_command("PackUpdate", function (args)
    if args ~= "" then
        vim.pack.update();
    else
         for package in String_split(args, " ") do
             vim.pack.update(package, { force = true });
         end
    end
end, { desc = "Update all vim.pack packages" });
