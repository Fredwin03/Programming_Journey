// let MainContent = React.createClass({
//     render: function() {
//         return <h1>I'm learning React!</h1>;
//     }
// });

// Alternative
function MainContent() {
    return <h1>I'm learning React!</h1>
};

ReactDOM.render(
    <div>
        <MainContent/>
    </div>,
    document.getElementById("root")
);