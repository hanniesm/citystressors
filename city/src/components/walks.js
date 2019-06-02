import React from 'react';
import Walk from './walk';

const WalkList = ({ walks }) => {
    const walkList = walks.map(walk => (
      <Walk 
        key={walk.id} 
        title={walk.title} 
        description={walk.description} 
        prewalkReflection={walk.prewalkReflections} 
        postwalkReflection={walk.postwalkReflections}
        user_id={walk.user_id}/>
    ));

return (
    <main className='messages'>
        {walkList}
    </main>
  )
}

export default WalkList