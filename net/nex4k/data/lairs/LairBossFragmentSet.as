import net.nex4k.data.lairs.LairBossFragment;
import net.nex4k.data.lairs.LairBossFragmentSetOrientation;

class net.nex4k.data.lairs.LairBossFragmentSet extends net.nex4k.data.lairs.FragmentSet
{
	private var m_fragments:Object;
	
	public function LairBossFragmentSet(fragments:Object)
	{
		this.m_fragments = {};
		
		for(var oIdx=0; oIdx<LairBossFragmentSetOrientation.m_orientations.length; oIdx++)
		{
			var orientation = LairBossFragmentSetOrientation.m_orientations[oIdx];
			this.m_fragments[orientation] = fragments[orientation];
		}
	}
	
	public function getFragments() : Object
	{
		return this.m_fragments;
	}
	
	public function getFragmentAtOrientation(orientationCode:String) : LairBossFragment
	{
		return this.m_fragments[orientationCode];
	}
}