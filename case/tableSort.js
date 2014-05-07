//table sort        
            function convert(sValue, sDataType) {
                switch(sDataType) {
                    case "int":
                        return parseInt(sValue);
                    case "float":
                        return parseFloat(sValue);
                    case "date":
                        return new Date(Date.parse(sValue));
                    default:
                        return sValue.toString();
                
                }
            }
        
            function generateCompareTRs(iCol, sDataType) {
        
                return  function compareTRs(oTR1, oTR2) {
                            var vValue1, vValue2;
        
                            if (oTR1.cells[iCol].getAttribute("value")) {
                                vValue1 = convert(oTR1.cells[iCol].getAttribute("value"),
                                              sDataType);
                                vValue2 = convert(oTR2.cells[iCol].getAttribute("value"),
                                              sDataType);
                            } else {
                                vValue1 = convert(oTR1.cells[iCol].firstChild.nodeValue,
                                              sDataType);
                                vValue2 = convert(oTR2.cells[iCol].firstChild.nodeValue,
                                              sDataType);
                            }
        
                            if (vValue1 < vValue2) {
                                return -1;
                            } else if (vValue1 > vValue2) {
                                return 1;
                            } else {
                                return 0;
                            }
                        };
            }
           
            function sortTable(sTableID, iCol, sDataType) {
                var oTable = document.getElementById(sTableID);
                var oTBody = oTable.tBodies[0];
                var colDataRows = oTBody.rows;
                var aTRs = new Array;
        
                for (var i=0; i < colDataRows.length; i++) {
                    aTRs[i] = colDataRows[i];
                }
        
                if (oTable.sortCol == iCol) {
                    aTRs.reverse();
                } else {
                    aTRs.sort(generateCompareTRs(iCol, sDataType));
                }
        
                var oFragment = document.createDocumentFragment();
                for (var i=0; i < aTRs.length; i++) {
                    oFragment.appendChild(aTRs[i]);
                }
       
                oTBody.appendChild(oFragment);
                oTable.sortCol = iCol;
            }