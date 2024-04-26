--P2P Cycle
--creation of requisition 
select * from apps.PO_REQUISITION_HEADERS_ALL;
select * from apps.PO_REQUISITION_LINES_ALL;
select * from apps.PO_REQ_DISTRIBUTIONS_ALL;

--creation of purchase order
select * from apps.po_headers_All;
select * from apps.po_lines_All;
select * from apps.po_distributions_all;

--receipt tables
select * from apps.RCV_SHIPMENT_HEADERS;
select * from apps.RCV_SHIPMENT_LINES;

--invoices tables
select * from apps.AP_INVOICES_ALL;
select * from apps.AP_INVOICE_LINES_ALL;

--payments
select * from apps.AP_INVOICE_PAYMENTS_ALL;

--GL Module
select * from apps.GL_JE_HEADERS;
select * from apps.GL_JE_LINES;


--O2C Cycle
select * from apps.OE_ORDER_HEADERS_ALL;
select * from apps.OE_ORDER_LINES_ALL;

