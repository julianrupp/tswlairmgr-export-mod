import net.nex4k.data.lairs.Fragment;

// abstract
class net.nex4k.data.lairs.FragmentSet
{
	private var m_fragments:Object;
	
	public function FragmentSet(fragments:Object)
	{
		this.m_fragments = fragments;
	}
	
	public function getFragments() : Object
	{
		return this.m_fragments;
	}
	
	public function getFragmentAtOrientation(orientationCode:String) : Fragment
	{
		return this.m_fragments[orientationCode];
	}
}