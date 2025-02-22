document.addEventListener("DOMContentLoaded", function () {
    const ctx = document.getElementById('salesChart').getContext('2d');

    const colors = [
        'red', 'blue', 'green', 'orange', 'purple', 'brown', 'pink', 'gray'
    ]; 

    const datasetsFormatted = datasets.map((product, index) => ({
        label: product.label,
        data: product.data,
        borderColor: colors[index % colors.length], 
        backgroundColor: colors[index % colors.length], 
        borderWidth: 2,
        fill: false
    }));

    new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: datasetsFormatted
        },
        options: {
            responsive: true,
            scales: {
                y: { beginAtZero: true }
            }
        }
    });
});


document.addEventListener("DOMContentLoaded", function () {
    const reviewctx = document.getElementById('reviewChart').getContext('2d');

    const colors = [
        '#b8e0fc', '#88a2eb', '#c5aef5', '#c5aef5', '#c5aef5'
    ];

    new Chart(reviewctx, {
        type: 'doughnut',
        data: {
            labels: reviewlabels,
            datasets: [{
                label: "Total Review",
                data: reviewdata,
                backgroundColor: colors.slice(0, reviewdata.length),
                borderColor: colors.slice(0, reviewdata.length),
                borderWidth: 2
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: { legend: { display: true, position: 'right' } },
        }
    });
});
