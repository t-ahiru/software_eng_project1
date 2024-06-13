import React from "react";

const Dashboard = () => {
  return (
    <div className="flex">
      {/* Sidebar */}
      <aside className="w-64 bg-white dark:bg-gray-800 shadow-md h-screen">
        <div className="px-6 py-8">
          <h1 className="text-xl font-bold text-gray-900 dark:text-white">MENU</h1>
        </div>
        <nav className="px-6 py-4">
          <ul className="space-y-4">
            <li>
              <a href="#" className="text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-500">Home</a>
            </li>
            <li>
              <a href="#" className="text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-500">Profile</a>
            </li>
            <li>
              <a href="#" className="text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-500">Settings</a>
            </li>
            <li>
              <a href="#" className="text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-500">Logout</a>
            </li>
          </ul>
        </nav>
      </aside>

      {/* Main Content */}
      <div className="flex-1 flex flex-col bg-gray-50 dark:bg-gray-900">
        {/* Top Navbar */}
        <header className="bg-white dark:bg-gray-800 shadow-md px-6 py-4">
          <div className="flex justify-between items-center">
            <h2 className="text-lg font-semibold text-gray-900 dark:text-white">Dashboard</h2>
            <div className="flex items-center space-x-4">
              <button className="text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-500">Notifications</button>
              <button className="text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-500">Profile</button>
            </div>
          </div>
        </header>

        {/* Dashboard Content */}
        <main className="p-6 space-y-6">
          <section className="bg-white dark:bg-gray-800 rounded-lg shadow p-6">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Welcome</h3>
            <p className="text-gray-600 dark:text-gray-300">DEPARTMENT OF COMPUTER ENGINEERING.</p>
          </section>
          <section className="bg-white dark:bg-gray-800 rounded-lg shadow p-6">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Recent Activity</h3>
            <p className="text-gray-600 dark:text-gray-300">Here's a summary of your recent activity.</p>
          </section>
          <section className="bg-white dark:bg-gray-800 rounded-lg shadow p-6">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Statistics</h3>
            <p className="text-gray-600 dark:text-gray-300">Click for more info.</p>
          </section>
        </main>
      </div>
    </div>
  );
};

export default Dashboard;
