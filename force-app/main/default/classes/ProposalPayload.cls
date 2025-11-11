public class ProposalPayload {
    public Client client;
    public Opportunity opportunity;
    public Advisor advisor;
    public TPA tpa;

    public class Client {
        public String name;
        public String localPhone;
        public String mailingState;
        public Decimal mailingFullZip;
        public String taxId;
    }

    public class Opportunity {
        public Date contractEffectiveDate;
        public Decimal activeLivesCount;
        public String stage;
        public String closedReason;
    }

    public class Advisor {
        public String npn;
        public String firmCrd;
        public String role;
        public String firmName;
        public Decimal firmNpn;
    }

    public class TPA {
        public String firmName;
        public String taxId;
    }
}