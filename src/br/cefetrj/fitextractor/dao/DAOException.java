package br.cefetrj.fitextractor.commons.dao;

public class DAOException extends RuntimeException{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4979810730782212600L;

	public DAOException() {
	}
	public DAOException(String message) {
		super(message);
	}
	public DAOException(Throwable cause) {
		super(cause);
	}
	public DAOException(String message, Throwable cause) {
		super(message, cause);
	}

}
