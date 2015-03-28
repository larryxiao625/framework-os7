.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final VDBG:Z


# instance fields
.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mMti:I

.field private mProtocolIdentifier:I

.field private mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1315
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 778
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 779
    .local v1, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 780
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 781
    .restart local v1       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 782
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 783
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    .line 784
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 786
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 792
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 794
    .end local v0           #octets:I
    :cond_0
    return-object v1

    .line 789
    .restart local v0       #octets:I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 790
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 163
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 165
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    .line 170
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 171
    const-string v5, "SmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 188
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 175
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    .line 178
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 182
    .local v3, size:I
    new-array v2, v3, [B

    .line 183
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 187
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "SmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 188
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6
    .parameter "pdu"

    .prologue
    const/4 v3, 0x0

    .line 99
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 100
    .local v2, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .end local v2           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 104
    goto :goto_0

    .line 105
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed with out of memory: "

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 107
    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 351
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 353
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 355
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 357
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 358
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 365
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 366
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    return-object v0

    .line 362
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method private static getDeliverPduHead(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "originalAddress"
    .parameter "mtiByte"

    .prologue
    const/4 v3, 0x0

    .line 1399
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1402
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1406
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1407
    .local v1, oaBytes:[B
    if-eqz v1, :cond_1

    .line 1408
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1410
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1418
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1420
    return-object v0

    :cond_0
    move v2, v3

    .line 1408
    goto :goto_0

    .line 1412
    :cond_1
    const-string v2, "SmsMessage"

    const-string v4, "write a empty address for deliver pdu"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1414
    const/16 v2, 0x91

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method

.method public static getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 12
    .parameter "scAddress"
    .parameter "origAddr"
    .parameter "message"
    .parameter "header"
    .parameter "timeStamp"
    .parameter "encoding"
    .parameter "language"

    .prologue
    .line 1320
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1321
    :cond_0
    const/4 v5, 0x0

    .line 1395
    :goto_0
    return-object v5

    .line 1324
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 1325
    .local v5, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    const-string v10, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SmsMessage: UDHI = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p3, :cond_3

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    if-eqz p3, :cond_4

    const/16 v9, 0x40

    :goto_2
    or-int/lit8 v9, v9, 0x0

    int-to-byte v4, v9

    .line 1327
    .local v4, mtiByte:B
    if-nez p0, :cond_5

    .line 1328
    const/4 v9, 0x0

    iput-object v9, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 1333
    :goto_3
    invoke-static {p1, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduHead(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1336
    .local v1, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 1337
    .local v8, userData:[B
    if-nez p6, :cond_2

    .line 1339
    const/16 p6, 0x1

    .line 1342
    :cond_2
    :try_start_0
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDeliveryPdu encoding-language: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v9, 0x1

    move/from16 v0, p6

    if-ne v0, v9, :cond_6

    .line 1345
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p2, p3, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 1368
    :goto_4
    if-eqz v8, :cond_7

    const/4 v9, 0x0

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xa0

    if-le v9, v10, :cond_7

    .line 1369
    const-string v9, "SmsMessage"

    const-string v10, "SmsMessage: message is too long"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v5, 0x0

    goto :goto_0

    .line 1325
    .end local v1           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v4           #mtiByte:B
    .end local v8           #userData:[B
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 1326
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 1330
    .restart local v4       #mtiByte:B
    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_3

    .line 1348
    .restart local v1       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #userData:[B
    :cond_6
    :try_start_1
    invoke-static {p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_4

    .line 1349
    :catch_0
    move-exception v7

    .line 1350
    .local v7, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v9, "SmsMessage"

    const-string v10, "Implausible UnsupportedEncodingException "

    invoke-static {v9, v10, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1353
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1356
    .end local v7           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 1360
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    .line 1361
    const/16 p6, 0x3

    goto :goto_4

    .line 1362
    :catch_2
    move-exception v7

    .line 1363
    .restart local v7       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v9, "SmsMessage"

    const-string v10, "Implausible UnsupportedEncodingException "

    invoke-static {v9, v10, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1364
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1374
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v7           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_7
    const/4 v9, 0x1

    move/from16 v0, p6

    if-ne v0, v9, :cond_9

    .line 1375
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1383
    :goto_5
    invoke-static/range {p4 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSCTimestamp(J)[B

    move-result-object v6

    .line 1384
    .local v6, scts:[B
    if-eqz v6, :cond_a

    .line 1385
    const/4 v9, 0x0

    array-length v10, v6

    invoke-virtual {v1, v6, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1392
    :cond_8
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v1, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1393
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 1377
    .end local v6           #scts:[B
    :cond_9
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 1387
    .restart local v6       #scts:[B
    :cond_a
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    const/4 v9, 0x7

    if-ge v3, v9, :cond_8

    .line 1388
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1387
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method public static getIccSmsPdus(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JI)Ljava/util/ArrayList;
    .locals 25
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "timeStamp"
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;JI)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1252
    .local p2, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 1253
    :cond_0
    const/16 v22, 0x0

    .line 1312
    :cond_1
    :goto_0
    return-object v22

    .line 1255
    :cond_2
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    .local v22, pdus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/16 v21, 0x0

    .line 1257
    .local v21, pdu:Lcom/android/internal/telephony/SmsMessageBase$PduBase;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1258
    .local v20, msgCount:I
    const/4 v7, 0x0

    .line 1259
    .local v7, encoding:I
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v18, v0

    .line 1260
    .local v18, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 1261
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v17

    .line 1262
    .local v17, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_4

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    if-ne v7, v2, :cond_4

    .line 1265
    :cond_3
    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1267
    :cond_4
    aput-object v17, v18, v19

    .line 1260
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1269
    .end local v17           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_a

    .line 1271
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    .line 1272
    .local v23, refNumber:I
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 1273
    new-instance v16, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1274
    .local v16, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1275
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1276
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1277
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1278
    new-instance v24, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1279
    .local v24, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1282
    const/4 v2, 0x1

    if-ne v7, v2, :cond_6

    .line 1283
    aget-object v2, v18, v19

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v24

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1284
    aget-object v2, v18, v19

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v24

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1286
    :cond_6
    const/4 v2, 0x5

    move/from16 v0, p5

    if-eq v0, v2, :cond_7

    const/4 v2, 0x7

    move/from16 v0, p5

    if-ne v0, v2, :cond_8

    .line 1287
    :cond_7
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, v24

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .line 1293
    :goto_3
    if-nez v21, :cond_9

    .line 1294
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1290
    :cond_8
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v11

    aget-object v2, v18, v19

    iget v15, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v12, p3

    move v14, v7

    invoke-static/range {v8 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v21

    goto :goto_3

    .line 1296
    :cond_9
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 1299
    .end local v16           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v23           #refNumber:I
    .end local v24           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_a
    const/4 v2, 0x5

    move/from16 v0, p5

    if-eq v0, v2, :cond_b

    const/4 v2, 0x7

    move/from16 v0, p5

    if-ne v0, v2, :cond_c

    .line 1300
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    aget-object v2, v18, v2

    iget v8, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    const/4 v2, 0x0

    aget-object v2, v18, v2

    iget v9, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .line 1306
    :goto_4
    if-nez v21, :cond_d

    .line 1307
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1303
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v2, 0x0

    aget-object v2, v18, v2

    iget v15, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v12, p3

    move v14, v7

    invoke-static/range {v8 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v21

    goto :goto_4

    .line 1309
    :cond_d
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v8, 0x0

    .line 401
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 402
    .local v2, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 405
    const-string v6, "ro.curegister.number"

    const-string v7, "10655459"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, cuRegNumber:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 407
    const/16 v6, 0x1ab6

    iput v6, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 412
    :goto_0
    iput-boolean v8, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 414
    new-instance v4, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 415
    .local v4, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v2, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 417
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    .line 419
    .local v5, smsHeaderData:[B
    array-length v6, p3

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8c

    if-le v6, v7, :cond_1

    .line 420
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS data message may only contain "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    rsub-int v8, v8, 0x8c

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v3, 0x0

    .line 448
    :goto_1
    return-object v3

    .line 409
    .end local v4           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v5           #smsHeaderData:[B
    :cond_0
    iput v8, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    goto :goto_0

    .line 425
    .restart local v4       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v5       #smsHeaderData:[B
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 426
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v6, 0x41

    invoke-static {p0, p1, v6, p4, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 433
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    array-length v6, p3

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 441
    array-length v6, v5

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    array-length v6, v5

    invoke-virtual {v0, v5, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 445
    array-length v6, p3

    invoke-virtual {v0, p3, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 447
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 240
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 241
    :cond_0
    const/4 v7, 0x0

    .line 339
    :goto_0
    return-object v7

    .line 244
    :cond_1
    if-nez p5, :cond_4

    .line 246
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 247
    .local v9, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 248
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 249
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 251
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 253
    :cond_2
    if-eqz p4, :cond_5

    .line 254
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 255
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 257
    :cond_3
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 261
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 262
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 273
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 275
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 276
    .local v6, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 283
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    .line 284
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 310
    .local v11, userData:[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 311
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    .line 313
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 265
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #userData:[B
    .restart local v9       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 266
    .restart local v8       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 267
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 268
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 275
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 288
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_3

    .line 289
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 290
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 293
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 296
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 300
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 301
    .restart local v11       #userData:[B
    const/16 p5, 0x3

    goto :goto_3

    .line 302
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 303
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 324
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 337
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 338
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 326
    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 328
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 333
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 466
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 470
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 471
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 478
    :goto_0
    if-eqz p3, :cond_0

    .line 480
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 483
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 486
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 490
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 494
    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 498
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 501
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 502
    return-object v0

    .line 473
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v2, v3

    .line 494
    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 198
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 200
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private static intToGsmBCDByte(I)B
    .locals 4
    .parameter "value"

    .prologue
    .line 1439
    if-gez p0, :cond_0

    .line 1440
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[time invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const/4 v0, 0x0

    .line 1447
    :goto_0
    return v0

    .line 1443
    :cond_0
    rem-int/lit8 p0, p0, 0x64

    .line 1446
    div-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0xf

    rem-int/lit8 v2, p0, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    or-int/2addr v1, v2

    int-to-byte v0, v1

    .line 1447
    .local v0, b:B
    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 143
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 131
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 4
    .parameter "pdu"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 898
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 900
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 902
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 910
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 912
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 913
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v2, :pswitch_data_0

    .line 929
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 919
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 931
    :goto_0
    return-void

    .line 922
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 925
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static parseSCTimestamp(J)[B
    .locals 5
    .parameter "millis"

    .prologue
    const/4 v4, 0x0

    .line 1424
    new-instance v1, Landroid/text/format/Time;

    const-string v2, "UTC"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1425
    .local v1, t:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1427
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 1428
    .local v0, scts:[B
    iget v2, v1, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    aput-byte v2, v0, v4

    .line 1429
    const/4 v2, 0x1

    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1430
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1431
    const/4 v2, 0x3

    iget v3, v1, Landroid/text/format/Time;->hour:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1432
    const/4 v2, 0x4

    iget v3, v1, Landroid/text/format/Time;->minute:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1433
    const/4 v2, 0x5

    iget v3, v1, Landroid/text/format/Time;->second:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1434
    const/4 v2, 0x6

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1436
    return-object v0
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 984
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 986
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 988
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 995
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 999
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1006
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1010
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 1012
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1013
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v3

    .line 984
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1010
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 5
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v1, 0x1

    .line 940
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 943
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 945
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 947
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 948
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 950
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 953
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 955
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 956
    .local v0, extraParams:I
    move v2, v0

    .line 957
    .local v2, moreExtraParams:I
    :goto_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 961
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    .line 965
    :cond_0
    and-int/lit8 v3, v0, 0x78

    if-nez v3, :cond_3

    .line 967
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 968
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 971
    :cond_1
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_2

    .line 972
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 975
    :cond_2
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_3

    .line 976
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 977
    .local v1, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 981
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_3
    return-void

    .line 976
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1022
    and-int/lit16 v4, p2, 0x80

    const/16 v7, 0x80

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1025
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1027
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1029
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v4, :cond_0

    .line 1035
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1039
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1047
    const/4 v2, 0x0

    .line 1048
    .local v2, validityPeriodLength:I
    shr-int/lit8 v4, p2, 0x3

    and-int/lit8 v1, v4, 0x3

    .line 1049
    .local v1, validityPeriodFormat:I
    if-nez v1, :cond_2

    .line 1051
    const/4 v2, 0x0

    move v3, v2

    .line 1063
    .end local v2           #validityPeriodLength:I
    .local v3, validityPeriodLength:I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3           #validityPeriodLength:I
    .restart local v2       #validityPeriodLength:I
    if-lez v3, :cond_4

    .line 1065
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v3, v2

    .end local v2           #validityPeriodLength:I
    .restart local v3       #validityPeriodLength:I
    goto :goto_1

    .end local v1           #validityPeriodFormat:I
    .end local v3           #validityPeriodLength:I
    :cond_1
    move v4, v6

    .line 1022
    goto :goto_0

    .line 1053
    .restart local v1       #validityPeriodFormat:I
    .restart local v2       #validityPeriodLength:I
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v1, :cond_3

    .line 1055
    const/4 v2, 0x1

    move v3, v2

    .end local v2           #validityPeriodLength:I
    .restart local v3       #validityPeriodLength:I
    goto :goto_1

    .line 1059
    .end local v3           #validityPeriodLength:I
    .restart local v2       #validityPeriodLength:I
    :cond_3
    const/4 v2, 0x7

    move v3, v2

    .end local v2           #validityPeriodLength:I
    .restart local v3       #validityPeriodLength:I
    goto :goto_1

    .line 1068
    .end local v3           #validityPeriodLength:I
    .restart local v2       #validityPeriodLength:I
    :cond_4
    and-int/lit8 v4, p2, 0x40

    const/16 v7, 0x40

    if-ne v4, v7, :cond_5

    move v0, v5

    .line 1070
    .local v0, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1071
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_5
    move v0, v6

    .line 1068
    goto :goto_2
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 11
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/16 v10, 0xe0

    const/16 v9, 0xc0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1081
    const/4 v3, 0x0

    .line 1082
    .local v3, hasMessageClass:Z
    const/4 v4, 0x0

    .line 1084
    .local v4, userDataCompressed:Z
    const/4 v2, 0x0

    .line 1087
    .local v2, encodingType:I
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_4

    .line 1088
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_1

    move v4, v5

    .line 1089
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_2

    move v3, v5

    .line 1091
    :goto_1
    if-eqz v4, :cond_3

    .line 1092
    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :goto_2
    if-ne v2, v5, :cond_f

    :goto_3
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1171
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    .line 1172
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1174
    packed-switch v2, :pswitch_data_0

    .line 1197
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1201
    :cond_0
    if-nez v3, :cond_12

    .line 1202
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1219
    :goto_5
    return-void

    .end local v1           #count:I
    :cond_1
    move v4, v6

    .line 1088
    goto :goto_0

    :cond_2
    move v3, v6

    .line 1089
    goto :goto_1

    .line 1095
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_1

    goto :goto_2

    .line 1097
    :pswitch_0
    const/4 v2, 0x1

    .line 1098
    goto :goto_2

    .line 1101
    :pswitch_1
    const/4 v2, 0x3

    .line 1102
    goto :goto_2

    .line 1106
    :pswitch_2
    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v2, 0x2

    goto :goto_2

    .line 1112
    :cond_4
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_6

    .line 1113
    const/4 v3, 0x1

    .line 1114
    const/4 v4, 0x0

    .line 1116
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_5

    .line 1118
    const/4 v2, 0x1

    goto :goto_2

    .line 1121
    :cond_5
    const/4 v2, 0x2

    goto :goto_2

    .line 1123
    :cond_6
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    if-eq v7, v9, :cond_7

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xd0

    if-eq v7, v8, :cond_7

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    if-ne v7, v10, :cond_c

    .line 1132
    :cond_7
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    if-ne v7, v10, :cond_8

    .line 1133
    const/4 v2, 0x3

    .line 1138
    :goto_6
    const/4 v4, 0x0

    .line 1139
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_9

    move v0, v5

    .line 1143
    .local v0, active:Z
    :goto_7
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_b

    .line 1144
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1145
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1146
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    if-ne v7, v9, :cond_a

    move v7, v5

    :goto_8
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto/16 :goto_2

    .line 1135
    .end local v0           #active:Z
    :cond_8
    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    move v0, v6

    .line 1139
    goto :goto_7

    .restart local v0       #active:Z
    :cond_a
    move v7, v6

    .line 1146
    goto :goto_8

    .line 1148
    :cond_b
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1150
    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MWI for fax, email, or other "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1153
    .end local v0           #active:Z
    :cond_c
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_e

    .line 1156
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v8, 0x84

    if-ne v7, v8, :cond_d

    .line 1158
    const/4 v2, 0x4

    goto/16 :goto_2

    .line 1160
    :cond_d
    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1164
    :cond_e
    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v5, v6

    .line 1169
    goto/16 :goto_3

    .line 1177
    .restart local v1       #count:I
    :pswitch_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_4

    .line 1181
    :pswitch_4
    if-eqz p2, :cond_11

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    :goto_9
    if-eqz p2, :cond_10

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_10
    invoke-virtual {p1, v1, v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_4

    :cond_11
    move v5, v6

    goto :goto_9

    .line 1187
    :pswitch_5
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_4

    .line 1191
    :pswitch_6
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_4

    .line 1204
    :cond_12
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_5

    .line 1206
    :pswitch_7
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_5

    .line 1209
    :pswitch_8
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_5

    .line 1212
    :pswitch_9
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_5

    .line 1215
    :pswitch_a
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_5

    .line 1174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1095
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1204
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 829
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_0

    .line 833
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 840
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_0

    .line 844
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 851
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return v0

    .line 855
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 814
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
