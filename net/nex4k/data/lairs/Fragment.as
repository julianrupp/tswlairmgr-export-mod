import com.Utils.LDBFormat;

import net.nex4k.data.lairs.Alphabet;

// abstract
class net.nex4k.data.lairs.Fragment
{
	private var m_letter:String;
	private var m_number:Number;
	
	public function Fragment(letter:String, number:Number)
	{
		this.m_letter = letter;
		this.m_number = number;
	}
	
	public function getLetter() : String
	{
		return this.m_letter;
	}
	
	public function getNumber() : Number
	{
		return this.m_number;
	}
	
	public function getName() : String
	{
		return getLocalizedName(com.Utils.LDBFormat.GetCurrentLanguageCode());
	}
	
	public function getLocalizedName(locale:String) : String
	{
		return Alphabet.getLocalizedName(this.m_letter, locale) + " " + this.m_number;
	}
}