import React from 'react';

const Walk = ({ title, description, prewalkReflection, postwalkReflection, user_id }) => {
    return (
      <div>
        <p>{title}</p>
        <p>{description}</p>
        <p>{prewalkReflection}</p>
        <p>{postwalkReflection}</p>
        <p>{user_id}</p>
      </div>
    );
}
export default Walk;