function App() {
  return (
    <form style={{ color: "wheat", fontWeight: "normal" }}>
      <label htmlFor="name" style={{ fontSize: "25px" }}>
        Name:
      </label>
      <input
        id="name"
        name="name"
        style={{ padding: "5px", font: "25px Play" }}
      ></input>
      <br />
      <button type="submit">Submit</button>
    </form>
  );
}

export default App;
