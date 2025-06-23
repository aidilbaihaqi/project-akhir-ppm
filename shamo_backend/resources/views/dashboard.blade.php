<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Shoes E-Commerce Dashboard
        </h2>
    </x-slot>

    <div class="py-12 bg-gray-100">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">

            {{-- Welcome Message --}}
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6 text-gray-900">
                Welcome, {{ Auth::user()->name }}! You're logged in as <strong>{{ Auth::user()->role }}</strong>.
            </div>

            {{-- Management Cards --}}
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                {{-- Products --}}
                <a href="{{ route('dashboard.product.index') }}" class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
                    <h3 class="text-lg font-semibold mb-2">Products</h3>
                    <p class="text-gray-600 text-sm">Manage shoes: view, create, update, delete.</p>
                </a>

                {{-- Categories --}}
                <a href="{{ route('dashboard.category.index') }}" class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
                    <h3 class="text-lg font-semibold mb-2">Categories</h3>
                    <p class="text-gray-600 text-sm">Manage product categories.</p>
                </a>

                {{-- Users --}}
                <a href="{{ route('dashboard.user.index') }}" class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
                    <h3 class="text-lg font-semibold mb-2">Users</h3>
                    <p class="text-gray-600 text-sm">View all registered users and their roles.</p>
                </a>

                {{-- Transactions --}}
                <a href="{{ route('dashboard.transaction.index') }}" class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
                    <h3 class="text-lg font-semibold mb-2">Transactions</h3>
                    <p class="text-gray-600 text-sm">Review completed and pending orders.</p>
                </a>
            </div>

        </div>
    </div>
</x-app-layout>
