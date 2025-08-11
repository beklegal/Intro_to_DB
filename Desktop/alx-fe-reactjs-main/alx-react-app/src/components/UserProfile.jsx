// src/components/UserProfile.jsx

const UserProfile = (props) => {
  return (
    <div style={styles.card}>
      <h2>{props.name}</h2>
      <p>Age: {props.age}</p>
      <p>Bio: {props.bio}</p>
    </div>
  );
};

const styles = {
  card: {
    border: '1px solid #ddd',
    borderRadius: '8px',
    padding: '16px',
    margin: '16px',
    boxShadow: '0 2px 5px rgba(0,0,0,0.1)',
    backgroundColor: '#f9f9f9',
  },
};

export default UserProfile;
