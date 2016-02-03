import net.nex4k.data.lairs.RegionalBossFragment;
import net.nex4k.data.lairs.RegionalBossFragmentSetOrientation;

class net.nex4k.data.lairs.RegionalBossFragmentSet extends net.nex4k.data.lairs.FragmentSet
{
	private var m_fragments:Object;
	
	public function RegionalBossFragmentSet(fragments:Object)
	{
		this.m_fragments = {};
		
		for(var oIdx=0; oIdx<RegionalBossFragmentSetOrientation.m_orientations.length; oIdx++)
		{
			var orientation = RegionalBossFragmentSetOrientation.m_orientations[oIdx];
			this.m_fragments[orientation] = fragments[orientation];
		}
	}
	
	public function getFragments() : Object
	{
		return this.m_fragments;
	}
	
	public function getFragmentAtOrientation(orientationCode:String) : RegionalBossFragment
	{
		return this.m_fragments[orientationCode];
	}
}