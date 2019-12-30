package transaction.mapper;

import org.springframework.jdbc.core.RowMapper;
import transaction.model.BankAccountInfo;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BankAccountMapper implements RowMapper<BankAccountInfo> {

    public static final String BASE_SQL //
            = "Select ID, FULLNAME, BALANCE From BANK_ACCOUNT";

    @Override
    public BankAccountInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

        Long id = rs.getLong("ID");
        String fullName = rs.getString("FULLNAME");
        double balance = rs.getDouble("BALANCE");

        return new BankAccountInfo(id, fullName, balance);
    }

}