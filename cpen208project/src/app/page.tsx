import Image from "next/image";
import React from "react";

export default function Register() {
  return (
    <div className="flex flex-col items-center justify-center min-h-screen bg-gray-50 dark:bg-gray-900">
      <div className="w-full max-w-md p-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
        <h1 className="text-2xl font-bold text-gray-900 dark:text-white">
          Create an account
        </h1>
        <form className="mt-6 space-y-4">
          <div>
            <label htmlFor="email" className="block text-sm font-medium text-gray-700 dark:text-gray-300">
              Your email
            </label>
            <input
              type="email"
              id="email"
              className="block w-full mt-1 p-2.5 border rounded-lg bg-gray-50 border-gray-300 text-gray-900 dark:bg-gray-700 dark:border-gray-600 dark:text-white focus:ring-primary-600 focus:border-primary-600"
              placeholder="iddrisu442g@gmail.com"
              required
            />
          </div>
          <div>
            <label htmlFor="password" className="block text-sm font-medium text-gray-700 dark:text-gray-300">
              Password
            </label>
            <input
              type="password"
              id="password"
              className="block w-full mt-1 p-2.5 border rounded-lg bg-gray-50 border-gray-300 text-gray-900 dark:bg-gray-700 dark:border-gray-600 dark:text-white focus:ring-primary-600 focus:border-primary-600"
              required
            />
          </div>
          <div>
            <label htmlFor="confirm-password" className="block text-sm font-medium text-gray-700 dark:text-gray-300">
              Confirm password
            </label>
            <input
              type="password"
              id="confirm-password"
              className="block w-full mt-1 p-2.5 border rounded-lg bg-gray-50 border-gray-300 text-gray-900 dark:bg-gray-700 dark:border-gray-600 dark:text-white focus:ring-primary-600 focus:border-primary-600"
              required
            />
          </div>
          <div className="flex items-start">
            <input
              id="terms"
              type="checkbox"
              className="w-4 h-4 border rounded bg-gray-50 dark:bg-gray-700 dark:border-gray-600"
              required
            />
            <label htmlFor="terms" className="ml-3 text-sm text-gray-500 dark:text-gray-300">
              I accept the{" "}
              <a href="#" className="font-medium text-primary-600 hover:underline dark:text-primary-500">
                Terms and Conditions
              </a>
            </label>
          </div>
          <button type="submit" className="w-full py-2.5 text-white bg-primary-600 rounded-lg font-medium focus:ring-4 focus:outline-none focus:ring-primary-300 dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">
            Create an account
          </button>
          <p className="text-sm text-gray-500 dark:text-gray-400">
            Already have an account?{" "}
            <a href="#" className="font-medium text-primary-600 hover:underline dark:text-primary-500">
              Login here
            </a>
          </p>
        </form>
      </div>
    </div>
  );
}
