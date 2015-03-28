.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final ANR_ADDITIONAL_NUMBER_END_ID:I = 0xc

.field private static final ANR_ADDITIONAL_NUMBER_START_ID:I = 0x3

.field private static final ANR_ADN_RECORD_IDENTIFIER_ID:I = 0x10

.field private static final ANR_ADN_SFI_ID:I = 0xf

.field private static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field private static final ANR_CAPABILITY_ID:I = 0xd

.field private static final ANR_DESCRIPTION_ID:I = 0x0

.field private static final ANR_EXTENSION_ID:I = 0xe

.field private static final ANR_TON_NPI_ID:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_EF_ANR_RECORD_SIZE_DONE:I = 0x7

.field private static final EVENT_EF_EMAIL_RECORD_SIZE_DONE:I = 0x6

.field private static final EVENT_EF_IAP_RECORD_SIZE_DONE:I = 0xa

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_GET_ADN_SIZE_DONE:I = 0xc

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field private static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x8

.field private static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGAS_TAG:I = 0xc8

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa

.field private static mAdnLoadError:Z


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnLengthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAdnRecordSizeArray:[I

.field private mAnrFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrPresentInType1:Z

.field private mAnrTagNumberInIap:I

.field private mAnrsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailPresentInType1:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIapFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordNums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecordSize:[I

.field private mRefreshCache:Z

.field private mUpdatePbrIndex:I

.field private mValidEmailNums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingExtLoads:I

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLoadError:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 3
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInType1:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInType1:Z

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mValidEmailNums:Ljava/util/Map;

    .line 137
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 141
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 142
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInType1:Z

    return p1
.end method

.method private buildAnrData(IILjava/lang/String;)[B
    .locals 9
    .parameter "length"
    .parameter "adnRecIndex"
    .parameter "anr"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 974
    new-array v1, p1, [B

    .line 975
    .local v1, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 976
    aput-byte v6, v1, v2

    .line 975
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 978
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 979
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "[buildAnrData] Empty anr record"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :goto_1
    return-object v1

    .line 982
    :cond_1
    aput-byte v5, v1, v5

    .line 983
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 984
    .local v0, byteAnr:[B
    const/16 v3, 0xa

    .line 985
    .local v3, maxlength:I
    array-length v4, v0

    if-le v4, v3, :cond_3

    .line 986
    invoke-static {v0, v5, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 987
    int-to-byte v4, v3

    aput-byte v4, v1, v7

    .line 992
    :goto_2
    const/16 v4, 0xd

    aput-byte v6, v1, v4

    .line 993
    const/16 v4, 0xe

    aput-byte v6, v1, v4

    .line 994
    const/16 v4, 0x11

    if-ne p1, v4, :cond_2

    .line 996
    const/16 v4, 0x10

    add-int/lit8 v5, p2, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 998
    :cond_2
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " buildAnrData: data is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 989
    :cond_3
    array-length v4, v0

    invoke-static {v0, v5, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    goto :goto_2
.end method

.method private buildEmailData(IILjava/lang/String;)[B
    .locals 7
    .parameter "length"
    .parameter "adnRecIndex"
    .parameter "email"

    .prologue
    const/4 v5, 0x0

    .line 955
    new-array v1, p1, [B

    .line 956
    .local v1, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 957
    const/4 v4, -0x1

    aput-byte v4, v1, v2

    .line 956
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 959
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 960
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "[buildEmailData] Empty email record"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_1
    return-object v1

    .line 963
    :cond_1
    invoke-static {p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 964
    .local v0, byteEmail:[B
    array-length v4, v0

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 965
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 966
    .local v3, pbrIndex:I
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_2

    .line 967
    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v5, p2, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 969
    :cond_2
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " buildEmailData: data is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 1005
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1009
    :goto_0
    return-void

    .line 1008
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private getAnrRecIndex(IILjava/lang/String;)I
    .locals 10
    .parameter "adnRecIndex"
    .parameter "pbrIndex"
    .parameter "oldAnr"

    .prologue
    const/4 v8, -0x1

    .line 921
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-nez v7, :cond_0

    move v4, v8

    .line 951
    :goto_0
    return v4

    .line 924
    :cond_0
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 925
    const/4 v5, 0x0

    .line 926
    .local v5, record:[B
    const/4 v4, -0x1

    .line 928
    .local v4, index:I
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_1
    if-eqz v5, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v7, v5, v7

    if-lez v7, :cond_1

    .line 933
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v4, v5, v7

    .line 934
    goto :goto_0

    .line 929
    :catch_0
    move-exception v2

    .line 930
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "UsimPhoneBookManager"

    const-string v9, "IndexOutOfBoundsException in getAnrRecIndex"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 936
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 937
    .local v6, recsSize:I
    const-string v7, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 938
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_4

    .line 939
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(II)Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, anrRecord:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 941
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the anr record index is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 942
    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    .line 938
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 948
    .end local v1           #anrRecord:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v5           #record:[B
    .end local v6           #recsSize:I
    :cond_3
    add-int/lit8 v4, p1, 0x1

    goto :goto_0

    .line 950
    .restart local v4       #index:I
    .restart local v5       #record:[B
    .restart local v6       #recsSize:I
    :cond_4
    const-string v7, "UsimPhoneBookManager"

    const-string v9, "no anr record index found"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 951
    goto/16 :goto_0
.end method

.method private getEfidByTag(II)I
    .locals 4
    .parameter "recNum"
    .parameter "tag"

    .prologue
    .line 534
    const/4 v0, -0x1

    .line 535
    .local v0, efid:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 536
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    const/4 v2, -0x1

    .line 540
    :goto_0
    return v2

    .line 537
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    move v2, v0

    .line 540
    goto :goto_0
.end method

.method private getEmailRecIndex(IILjava/lang/String;)I
    .locals 10
    .parameter "adnRecIndex"
    .parameter "pbrIndex"
    .parameter "oldEmail"

    .prologue
    const/4 v8, -0x1

    .line 883
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-nez v7, :cond_0

    move v3, v8

    .line 917
    :goto_0
    return v3

    .line 886
    :cond_0
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 887
    const/4 v4, 0x0

    .line 888
    .local v4, record:[B
    const/4 v3, -0x1

    .line 890
    .local v3, index:I
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 897
    :goto_1
    if-eqz v4, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v4, v7

    if-lez v7, :cond_1

    .line 898
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, v4, v7

    .line 899
    goto :goto_0

    .line 891
    :catch_0
    move-exception v1

    .line 892
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "UsimPhoneBookManager"

    const-string v9, "IndexOutOfBoundsException in getEmailRecIndex"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 893
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 894
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v7, "UsimPhoneBookManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 902
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mValidEmailNums:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 904
    .local v6, validNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 905
    .local v5, recsSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_4

    .line 907
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 908
    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    .line 905
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 914
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #record:[B
    .end local v5           #recsSize:I
    .end local v6           #validNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    add-int/lit8 v3, p1, 0x1

    goto :goto_0

    .line 916
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #record:[B
    .restart local v5       #recsSize:I
    .restart local v6       #validNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    const-string v7, "UsimPhoneBookManager"

    const-string v9, "no email record index found"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 917
    goto :goto_0
.end method

.method private getInitIndexBy(I)I
    .locals 3
    .parameter "pbrIndex"

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, index:I
    :goto_0
    if-lez p1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 565
    :cond_0
    return v0
.end method

.method private getValidRecordNums(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "pbrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getValidRecordNums:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private hasRecordIn(Ljava/util/Map;I)Z
    .locals 5
    .parameter
    .parameter "pbrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;I)Z"
        }
    .end annotation

    .prologue
    .local p1, record:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<[B>;>;"
    const/4 v1, 0x0

    .line 570
    if-nez p1, :cond_0

    .line 578
    :goto_0
    return v1

    .line 573
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    const/4 v1, 0x1

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record is empty in pbrIndex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasValidRecords(I)Z
    .locals 2
    .parameter "pbrIndex"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1457
    const-string v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-void
.end method

.method private putValidRecNums(I)V
    .locals 6
    .parameter "pbrIndex"

    .prologue
    .line 1013
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v3, recordNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v2

    .line 1015
    .local v2, initAdnIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putValidRecNums:pbrindex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", initAdnIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1016
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1017
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1018
    .local v0, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1019
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    .end local v0           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1024
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "valid recnum is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1027
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v6, 0xc2

    .line 839
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 851
    .local v3, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 854
    const/4 v2, 0x0

    .line 856
    .local v2, extEf:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 857
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 862
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v4, v2, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 870
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 846
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #extEf:I
    .end local v3           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_1
    move-exception v1

    .line 847
    .local v1, excep:Ljava/lang/Exception;
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in readAdnFileAndWait excep="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 864
    .end local v1           #excep:Ljava/lang/Exception;
    .restart local v2       #extEf:I
    .restart local v3       #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_2
    move-exception v1

    .line 865
    .restart local v1       #excep:Ljava/lang/Exception;
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception excep="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readAnrFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/4 v7, 0x5

    const/16 v5, 0xc4

    .line 378
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 379
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 381
    .local v1, efid:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v3, :cond_2

    .line 382
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(II)V

    .line 383
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Error: IAP file is empty"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1           #efid:I
    :cond_0
    :goto_0
    return-void

    .line 387
    .restart local v1       #efid:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 396
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 401
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Error: Anr file is empty"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/util/ArrayList;Landroid/os/Message;)V

    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 404
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnr(I)V

    goto :goto_0
.end method

.method private readAnrRecord(II)Ljava/lang/String;
    .locals 7
    .parameter "recNum"
    .parameter "pbrIndex"

    .prologue
    const/4 v1, 0x0

    .line 820
    const/4 v2, 0x0

    .line 821
    .local v2, anrRec:[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 835
    :goto_0
    return-object v1

    .line 824
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    const/4 v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v4, v5, 0xff

    .line 829
    .local v4, numberLength:I
    const/16 v5, 0xb

    if-le v4, v5, :cond_1

    .line 831
    const-string v1, ""

    goto :goto_0

    .line 825
    .end local v4           #numberLength:I
    :catch_0
    move-exception v3

    .line 826
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 833
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #numberLength:I
    :cond_1
    const/4 v5, 0x2

    invoke-static {v2, v5, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, anr:Ljava/lang/String;
    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 10
    .parameter "recNum"

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0xca

    .line 329
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .local v3, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 342
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 348
    .local v1, efid:I
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_2

    .line 349
    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(II)V

    .line 350
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v9, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 360
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEmailFileAndWait email efid is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 363
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 369
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Error: Email file is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    .end local v1           #efid:I
    .end local v3           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 337
    .local v2, excep:Ljava/lang/Exception;
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in readEmailFileAndWait excep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    .end local v2           #excep:Ljava/lang/Exception;
    .restart local v1       #efid:I
    .restart local v3       #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v9, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/util/ArrayList;Landroid/os/Message;)V

    goto :goto_1

    .line 364
    :catch_1
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 372
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithEmail(I)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(II)Ljava/lang/String;
    .locals 6
    .parameter "recNum"
    .parameter "pbrIndex"

    .prologue
    const/4 v2, 0x0

    .line 805
    const/4 v3, 0x0

    .line 806
    .local v3, emailRec:[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 816
    :goto_0
    return-object v2

    .line 809
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, email:Ljava/lang/String;
    goto :goto_0

    .line 810
    .end local v2           #email:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 811
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method private readIapFileAndWait(II)V
    .locals 5
    .parameter "efid"
    .parameter "recNum"

    .prologue
    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readIapFileAndWait: pbrIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/util/ArrayList;Landroid/os/Message;)V

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 313
    :cond_0
    return-void

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 310
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 311
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateAnrFile(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "iccIndex"
    .parameter "oldAnr"
    .parameter "newAnr"

    .prologue
    const/16 v6, 0xc4

    .line 465
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(II)I

    move-result v2

    .line 466
    .local v2, efid:I
    if-nez p2, :cond_0

    const-string p2, ""

    .line 467
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 468
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, anrs:Ljava/lang/String;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 470
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 492
    :goto_0
    return v3

    .line 471
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v3, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 473
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 477
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAnrFile oldAnr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newAnr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", efid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 479
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 480
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v5, 0x7

    invoke-virtual {p0, v5, p1, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    if-eqz v3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 490
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 492
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    goto :goto_0

    .line 475
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    goto :goto_1

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to update AnrFile"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 487
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private updateEmailFile(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "iccIndex"
    .parameter "oldEmail"
    .parameter "newEmail"

    .prologue
    const/16 v6, 0xca

    .line 426
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(II)I

    move-result v1

    .line 427
    .local v1, efid:I
    if-nez p2, :cond_0

    const-string p2, ""

    .line 428
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 429
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, emails:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmailFile oldEmail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newEmail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 432
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 433
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 455
    :goto_0
    return v3

    .line 434
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 436
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 440
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    if-eqz v3, :cond_3

    .line 441
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 442
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v5, 0x6

    invoke-virtual {p0, v5, p1, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 449
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    if-eqz v3, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 455
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    goto :goto_0

    .line 438
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to update EmailFile"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 449
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "iccIndex"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "tag"

    .prologue
    .line 503
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    const/16 v4, 0xc1

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(II)I

    move-result v1

    .line 504
    .local v1, efid:I
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 505
    const/4 v2, -0x1

    .line 506
    .local v2, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 529
    :goto_0
    return v3

    .line 507
    :cond_0
    sparse-switch p4, :sswitch_data_0

    .line 515
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    const/4 v2, -0x1

    .line 518
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIapFile  efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 520
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 521
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0xa

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, p1, v2, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 528
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    goto :goto_0

    .line 509
    :sswitch_0
    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecIndex(IILjava/lang/String;)I

    move-result v2

    .line 510
    goto :goto_1

    .line 512
    :sswitch_1
    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecIndex(IILjava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to update IapFile"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 528
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 507
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordWithAnr(I)V
    .locals 17
    .parameter "pbrIndex"

    .prologue
    .line 668
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 670
    .local v9, numAdnRecs:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 676
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_4

    .line 677
    const/4 v12, 0x0

    .line 679
    .local v12, record:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #record:[B
    check-cast v12, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    .restart local v12       #record:[B
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v11, v12, v13

    .line 688
    .local v11, recNum:I
    if-lez v11, :cond_3

    .line 689
    const/4 v13, 0x1

    new-array v4, v13, [Ljava/lang/String;

    .line 691
    .local v4, anrs:[Ljava/lang/String;
    const/4 v13, 0x0

    add-int/lit8 v14, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(II)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    .line 692
    if-nez p1, :cond_6

    const/4 v13, 0x0

    :goto_2
    add-int v2, v6, v13

    .line 693
    .local v2, adnIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 694
    .local v10, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 698
    invoke-virtual {v10, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v2, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 700
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateAnrRecord adnIndex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 676
    .end local v2           #adnIndex:I
    .end local v4           #anrs:[Ljava/lang/String;
    .end local v10           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 680
    .end local v11           #recNum:I
    .end local v12           #record:[B
    :catch_0
    move-exception v5

    .line 681
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v13, "UsimPhoneBookManager"

    const-string v14, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #i:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1AnrFile(II)V

    .line 715
    if-nez p1, :cond_7

    const/4 v7, 0x0

    .line 716
    .local v7, initIndex:I
    :goto_4
    add-int v8, v7, v9

    .line 717
    .local v8, maxIndex:I
    move v6, v7

    .restart local v6       #i:I
    :goto_5
    if-ge v6, v8, :cond_0

    .line 718
    const/4 v3, 0x0

    .line 720
    .local v3, anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 724
    .restart local v3       #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_8

    .line 717
    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 683
    .end local v3           #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #initIndex:I
    .end local v8           #maxIndex:I
    :catch_1
    move-exception v5

    .line 684
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Anr pbrIndex: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " i:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 692
    .end local v5           #e:Ljava/lang/NullPointerException;
    .restart local v4       #anrs:[Ljava/lang/String;
    .restart local v11       #recNum:I
    .restart local v12       #record:[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    add-int/lit8 v14, p1, -0x1

    aget v13, v13, v14

    goto/16 :goto_2

    .line 715
    .end local v4           #anrs:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v11           #recNum:I
    .end local v12           #record:[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    add-int/lit8 v14, p1, -0x1

    aget v7, v13, v14

    goto :goto_4

    .line 721
    .restart local v6       #i:I
    .restart local v7       #initIndex:I
    .restart local v8       #maxIndex:I
    :catch_2
    move-exception v5

    .line 722
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 725
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v3       #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 726
    .restart local v10       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 729
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v4, v13, [Ljava/lang/String;

    .line 730
    .restart local v4       #anrs:[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v13, v14, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    invoke-virtual {v10, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v6, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 733
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateAnrRecord adnIndex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private updatePhoneAdnRecordWithEmail(I)V
    .locals 21
    .parameter "pbrIndex"

    .prologue
    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v17

    if-nez v17, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 585
    .local v12, numAdnRecs:I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v16, validRecordNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 594
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v12, :cond_4

    .line 595
    const/4 v15, 0x0

    .line 597
    .local v15, record:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #record:[B
    check-cast v15, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 605
    .restart local v15       #record:[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v17, v0

    aget-byte v14, v15, v17

    .line 606
    .local v14, recNum:I
    if-lez v14, :cond_3

    .line 607
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    .line 609
    .local v7, emails:[Ljava/lang/String;
    const/16 v17, 0x0

    add-int/lit8 v18, v14, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v17

    .line 610
    if-nez p1, :cond_5

    const/16 v17, 0x0

    :goto_2
    add-int v4, v8, v17

    .line 611
    .local v4, adnIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 612
    .local v13, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    :cond_2
    const/16 v17, 0x0

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 616
    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 617
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateEmailRecord adnIndex: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " recNum: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v7, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v4           #adnIndex:I
    .end local v7           #emails:[Ljava/lang/String;
    .end local v13           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 598
    .end local v14           #recNum:I
    .end local v15           #record:[B
    :catch_0
    move-exception v5

    .line 599
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error: Improper ICC card: No IAP record for ADN, continuing i="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    :goto_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "valid Email recnum is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mValidEmailNums:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 601
    :catch_1
    move-exception v5

    .line 602
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Email pbrIndex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " i:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 610
    .end local v5           #e:Ljava/lang/NullPointerException;
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v14       #recNum:I
    .restart local v15       #record:[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, -0x1

    aget v17, v17, v18

    goto/16 :goto_2

    .line 630
    .end local v7           #emails:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v14           #recNum:I
    .end local v15           #record:[B
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInType1:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 639
    .local v10, len:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(II)V

    .line 641
    if-nez p1, :cond_8

    const/4 v9, 0x0

    .line 642
    .local v9, initIndex:I
    :goto_4
    add-int v11, v9, v12

    .line 643
    .local v11, maxIndex:I
    move v8, v9

    .restart local v8       #i:I
    :goto_5
    if-ge v8, v11, :cond_0

    .line 644
    const/4 v6, 0x0

    .line 646
    .local v6, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v6, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 650
    .restart local v6       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_9

    .line 643
    :cond_7
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 641
    .end local v6           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #i:I
    .end local v9           #initIndex:I
    .end local v11           #maxIndex:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, -0x1

    aget v9, v17, v18

    goto :goto_4

    .line 647
    .restart local v8       #i:I
    .restart local v9       #initIndex:I
    .restart local v11       #maxIndex:I
    :catch_2
    move-exception v5

    .line 648
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 652
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 653
    .restart local v13       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 656
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    .line 657
    .restart local v7       #emails:[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 660
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateEmailRecord adnIndex: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v7, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_6
.end method


# virtual methods
.method public findEFInfo(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 261
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 263
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error:findEFInfo Pbr file is empty"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v1, -0x1

    .line 274
    :goto_0
    return v1

    .line 261
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 268
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .local v1, efid:I
    goto :goto_0

    .line 269
    .end local v1           #efid:I
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 271
    const/4 v1, -0x1

    .restart local v1       #efid:I
    goto :goto_0
.end method

.method public findExtensionEFInfo(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 280
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 284
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 286
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: findExtensionEFInfo Pbr file is empty"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, -0x1

    .line 297
    :goto_0
    return v1

    .line 284
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 291
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .local v1, efid:I
    goto :goto_0

    .line 292
    .end local v1           #efid:I
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 294
    const/4 v1, -0x1

    .restart local v1       #efid:I
    goto :goto_0
.end method

.method public getAdnRecordSizeArray()[I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    return-object v0
.end method

.method public getNumRecs()I
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_1

    .line 248
    const-string v0, "UsimPhoneBookManager"

    const-string v2, "Error: Pbr file is empty"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    monitor-exit v1

    .line 252
    :goto_0
    return v0

    .line 251
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPbrIndexBy(I)I
    .locals 4
    .parameter "adnIndex"

    .prologue
    .line 548
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 549
    .local v1, len:I
    const/4 v2, 0x0

    .line 550
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 551
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 552
    if-ge p1, v2, :cond_0

    .line 556
    .end local v0           #i:I
    :goto_1
    return v0

    .line 550
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getUsimAdnRecordsSize()[I
    .locals 9

    .prologue
    .line 160
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v4

    .line 162
    .local v4, numRecs:I
    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:[I

    .line 164
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 165
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 194
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:[I

    return-object v5

    .line 170
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 176
    const-string v5, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADN EF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xc0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 187
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v2           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 172
    .local v1, excep:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in readAdnFileAndWait excep="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    .end local v1           #excep:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #numRecs:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 181
    .restart local v2       #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v3       #i:I
    .restart local v4       #numRecs:I
    :catch_1
    move-exception v1

    .line 182
    .restart local v1       #excep:Ljava/lang/Exception;
    :try_start_6
    const-string v5, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception excep="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 188
    .end local v1           #excep:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v7, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 1047
    const/16 v21, 0x0

    .line 1048
    .local v21, oldAnr:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1049
    .local v19, newAnr:Ljava/lang/String;
    const/16 v22, 0x0

    .line 1050
    .local v22, oldEmail:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1051
    .local v20, newEmail:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1054
    .local v25, response:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1056
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1057
    .local v15, ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1058
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1060
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1061
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1062
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1065
    .end local v15           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v2, "Loading USIM ADN records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1067
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1068
    .local v23, pbrIndex:I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1069
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v6, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1071
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->putValidRecNums(I)V

    .line 1072
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLoadError:Z

    .line 1076
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1077
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1078
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1074
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLoadError:Z

    goto :goto_1

    .line 1081
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v23           #pbrIndex:I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1082
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1083
    .restart local v23       #pbrIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading USIM IAP records done pbrIndex:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1084
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 1085
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1088
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1089
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 1092
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v23           #pbrIndex:I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1093
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1094
    .restart local v23       #pbrIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading USIM Email records done. pbrIndex="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1095
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    .line 1096
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1100
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1101
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 1104
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v23           #pbrIndex:I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1105
    .restart local v15       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1106
    :try_start_4
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 1107
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v16, v0

    .line 1111
    .local v16, efrecordSize:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v16, v8

    aput v8, v2, v7

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:[I

    const/4 v7, 0x1

    aget v8, v2, v7

    const/4 v9, 0x1

    aget v9, v16, v9

    add-int/2addr v8, v9

    aput v8, v2, v7

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:[I

    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x2

    aget v9, v16, v9

    add-int/2addr v8, v9

    aput v8, v2, v7

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET_RECORD_SIZE Size "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " total "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " #record "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1122
    .end local v16           #efrecordSize:[I
    :goto_2
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 1119
    :cond_5
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET_RECORD_SIZE Size: exception: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    .line 1125
    .end local v15           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 1126
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1127
    .restart local v23       #pbrIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading USIM Anr records done. pbrIndex="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1128
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 1129
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1132
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1133
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v2

    .line 1136
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v23           #pbrIndex:I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1137
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    .line 1138
    .local v18, emails:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v12, v2, -0x1

    .line 1139
    .local v12, adnRecIndex:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1140
    .local v3, efid:I
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1141
    .local v17, email:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_8

    .line 1142
    const/4 v2, 0x0

    aget-object v22, v17, v2

    .line 1143
    const-string v20, ""

    .line 1148
    :cond_7
    :goto_3
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 1149
    const-string v2, "GSM"

    iget-object v6, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1152
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1153
    monitor-exit v6

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v2

    .line 1144
    :cond_8
    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v6, 0x1

    if-le v2, v6, :cond_7

    .line 1145
    const/4 v2, 0x0

    aget-object v22, v17, v2

    .line 1146
    const/4 v2, 0x1

    aget-object v20, v17, v2

    goto :goto_3

    .line 1156
    :cond_9
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v24, v2

    check-cast v24, [I

    .line 1157
    .local v24, recordSize:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecIndex(IILjava/lang/String;)I

    move-result v4

    .line 1158
    .local v4, recordNumber:I
    move-object/from16 v0, v24

    array-length v2, v0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_a

    const/4 v2, 0x2

    aget v2, v24, v2

    if-gt v4, v2, :cond_a

    if-gtz v4, :cond_b

    .line 1159
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1160
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1161
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1162
    monitor-exit v6

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v2

    .line 1165
    :cond_b
    const/4 v2, 0x0

    aget v2, v24, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v12, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailData(IILjava/lang/String;)[B

    move-result-object v5

    .line 1166
    .local v5, data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEmail:recordNumber="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " iccAdnIndex="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v12, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1169
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingExtLoads:I

    goto/16 :goto_0

    .line 1172
    .end local v3           #efid:I
    .end local v4           #recordNumber:I
    .end local v5           #data:[B
    .end local v12           #adnRecIndex:I
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v17           #email:[Ljava/lang/String;
    .end local v18           #emails:Ljava/lang/String;
    .end local v24           #recordSize:[I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1173
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 1174
    .local v14, anrs:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v12, v2, -0x1

    .line 1175
    .restart local v12       #adnRecIndex:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1176
    .restart local v3       #efid:I
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1177
    .local v13, anr:[Ljava/lang/String;
    array-length v2, v13

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d

    .line 1178
    const/4 v2, 0x0

    aget-object v21, v13, v2

    .line 1179
    const-string v19, ""

    .line 1184
    :cond_c
    :goto_4
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 1185
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1186
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1187
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1188
    monitor-exit v6

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    throw v2

    .line 1180
    :cond_d
    array-length v2, v13

    const/4 v6, 0x1

    if-le v2, v6, :cond_c

    .line 1181
    const/4 v2, 0x0

    aget-object v21, v13, v2

    .line 1182
    const/4 v2, 0x1

    aget-object v19, v13, v2

    goto :goto_4

    .line 1191
    :cond_e
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v24, v2

    check-cast v24, [I

    .line 1192
    .restart local v24       #recordSize:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecIndex(IILjava/lang/String;)I

    move-result v4

    .line 1193
    .restart local v4       #recordNumber:I
    move-object/from16 v0, v24

    array-length v2, v0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_f

    const/4 v2, 0x2

    aget v2, v24, v2

    if-gt v4, v2, :cond_f

    if-gtz v4, :cond_10

    .line 1194
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1195
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1196
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1197
    monitor-exit v6

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    throw v2

    .line 1200
    :cond_10
    const/4 v2, 0x0

    aget v2, v24, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v12, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrData(IILjava/lang/String;)[B

    move-result-object v5

    .line 1201
    .restart local v5       #data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAnr:recordNumber="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " iccAdnIndex="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v12, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1204
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingExtLoads:I

    goto/16 :goto_0

    .line 1207
    .end local v3           #efid:I
    .end local v4           #recordNumber:I
    .end local v5           #data:[B
    .end local v12           #adnRecIndex:I
    .end local v13           #anr:[Ljava/lang/String;
    .end local v14           #anrs:Ljava/lang/String;
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v24           #recordSize:[I
    :pswitch_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingExtLoads:I

    .line 1208
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1209
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_11

    .line 1210
    const-string v2, "UsimPhoneBookManager"

    iget-object v6, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1229
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1230
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1231
    monitor-exit v6

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    throw v2

    .line 1213
    :cond_11
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v5, v2

    check-cast v5, [B

    .line 1214
    .restart local v5       #data:[B
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1215
    .restart local v4       #recordNumber:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 1217
    .restart local v12       #adnRecIndex:I
    const-string v2, "EVENT_UPDATE_EMAIL_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1218
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const/4 v2, 0x0

    aget-byte v2, v5, v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_12

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mValidEmailNums:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1226
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "valid Email recnum is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mValidEmailNums:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1224
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mValidEmailNums:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1234
    .end local v4           #recordNumber:I
    .end local v5           #data:[B
    .end local v12           #adnRecIndex:I
    .end local v15           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v2, "EVENT_UPDATE_ANR_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingExtLoads:I

    .line 1236
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1237
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v5, v2

    check-cast v5, [B

    .line 1238
    .restart local v5       #data:[B
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1239
    .restart local v4       #recordNumber:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 1241
    .restart local v12       #adnRecIndex:I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_13

    .line 1242
    const-string v2, "UsimPhoneBookManager"

    iget-object v6, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1248
    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1249
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1250
    monitor-exit v6

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    throw v2

    .line 1245
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1253
    .end local v4           #recordNumber:I
    .end local v5           #data:[B
    .end local v12           #adnRecIndex:I
    .end local v15           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const-string v2, "EVENT_EF_IAP_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1254
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1255
    .restart local v15       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v12, v2, -0x1

    .line 1256
    .restart local v12       #adnRecIndex:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 1258
    .restart local v4       #recordNumber:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    const/16 v6, 0xc1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(II)I

    move-result v3

    .line 1259
    .restart local v3       #efid:I
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 1260
    .local v26, tag:I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_14

    .line 1261
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1262
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1263
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1264
    monitor-exit v6

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    throw v2

    .line 1267
    :cond_14
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v24, v2

    check-cast v24, [I

    .line 1268
    .restart local v24       #recordSize:[I
    const/4 v5, 0x0

    .line 1269
    .restart local v5       #data:[B
    move-object/from16 v0, v24

    array-length v2, v0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_15

    add-int/lit8 v2, v12, 0x1

    const/4 v6, 0x2

    aget v6, v24, v6

    if-gt v2, v6, :cond_15

    if-nez v4, :cond_16

    .line 1270
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1271
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1272
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1273
    monitor-exit v6

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    throw v2

    .line 1276
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #data:[B
    check-cast v5, [B

    .line 1278
    .restart local v5       #data:[B
    sparse-switch v26, :sswitch_data_0

    .line 1286
    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingExtLoads:I

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IAP  efid= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", update IAP index= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " with value= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v8, v12, 0x1

    const/4 v10, 0x0

    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move v7, v3

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1280
    :sswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    int-to-byte v6, v4

    aput-byte v6, v5, v2

    goto :goto_8

    .line 1283
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    int-to-byte v6, v4

    aput-byte v6, v5, v2

    goto :goto_8

    .line 1294
    .end local v3           #efid:I
    .end local v4           #recordNumber:I
    .end local v5           #data:[B
    .end local v12           #adnRecIndex:I
    .end local v15           #ar:Landroid/os/AsyncResult;
    .end local v24           #recordSize:[I
    .end local v26           #tag:I
    :pswitch_b
    const-string v2, "EVENT_UPDATE_IAP_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1295
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingExtLoads:I

    .line 1296
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1297
    .restart local v15       #ar:Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 1298
    const-string v2, "UsimPhoneBookManager"

    iget-object v6, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1307
    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1308
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1309
    monitor-exit v6

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    throw v2

    .line 1301
    :cond_17
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v5, v2

    check-cast v5, [B

    .line 1302
    .restart local v5       #data:[B
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1304
    .restart local v12       #adnRecIndex:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->success:Z

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v12, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
    .end packed-switch

    .line 1278
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 317
    return-void
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v2, :cond_0

    .line 202
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 234
    :goto_0
    return-object v2

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 212
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 216
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    monitor-exit v3

    goto :goto_0

    .line 218
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 220
    .local v1, numRecs:I
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 223
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 224
    sget-boolean v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLoadError:Z

    if-eqz v4, :cond_5

    .line 225
    const-string v4, "***Adn Load Error, return null***"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 226
    monitor-exit v3

    goto :goto_0

    .line 228
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 229
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 230
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    aput v5, v4, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method parseType1AnrFile(II)V
    .locals 9
    .parameter "numRecs"
    .parameter "pbrIndex"

    .prologue
    .line 777
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 778
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    .line 780
    :cond_0
    const/4 v3, 0x0

    .line 781
    .local v3, anrRec:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 802
    :cond_1
    :goto_0
    return-void

    .line 783
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_1

    .line 785
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(II)Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, anr:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 783
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 786
    .end local v2           #anr:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 787
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "UsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No anr record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 794
    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #anr:Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_6

    const/4 v7, 0x0

    :goto_3
    add-int v1, v5, v7

    .line 795
    .local v1, adnIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 796
    .local v6, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_5

    .line 797
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .restart local v6       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 794
    .end local v1           #adnIndex:I
    .end local v6           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    add-int/lit8 v8, p2, -0x1

    aget v7, v7, v8

    goto :goto_3
.end method

.method parseType1EmailFile(II)V
    .locals 9
    .parameter "numRecs"
    .parameter "pbrIndex"

    .prologue
    .line 740
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 741
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 743
    :cond_0
    const/4 v4, 0x0

    .line 744
    .local v4, emailRec:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 774
    :cond_1
    :goto_0
    return-void

    .line 746
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_1

    .line 748
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-byte v1, v4, v7

    .line 755
    .local v1, adnRecIndex:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_4

    .line 746
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 749
    .end local v1           #adnRecIndex:I
    :catch_0
    move-exception v2

    .line 750
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "UsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #adnRecIndex:I
    :cond_4
    const/4 v7, 0x0

    array-length v8, v4

    add-int/lit8 v8, v8, -0x2

    invoke-static {v4, v7, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, email:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 766
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v1, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 767
    .local v6, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_5

    .line 768
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .restart local v6       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v1, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mValidEmailNums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 157
    return-void
.end method

.method public setPhoneBookRecords(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    .locals 1
    .parameter "index"
    .parameter "adn"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void
.end method

.method public setUpdateAdnIndex(I)V
    .locals 0
    .parameter "pbrIndex"

    .prologue
    .line 1453
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdatePbrIndex:I

    .line 1454
    return-void
.end method

.method public updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z
    .locals 14
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "iccIndex"
    .parameter "tag"

    .prologue
    .line 1397
    const/4 v8, 0x0

    .line 1398
    .local v8, oldRecords:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1399
    .local v6, newRecords:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1400
    .local v7, oldRecord:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1401
    .local v5, newRecord:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1403
    .local v10, success:Z
    sparse-switch p4, :sswitch_data_0

    move v11, v10

    .line 1449
    .end local v10           #success:Z
    .local v11, success:I
    :goto_0
    return v11

    .line 1405
    .end local v11           #success:I
    .restart local v10       #success:Z
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    .line 1406
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 1415
    :goto_1
    if-eqz v8, :cond_0

    .line 1416
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    if-ge v3, v4, :cond_0

    aget-object v9, v1, v3

    .line 1417
    .local v9, record:Ljava/lang/String;
    move-object v7, v9

    .line 1421
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v9           #record:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1422
    move-object v1, v6

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    if-ge v3, v4, :cond_1

    aget-object v9, v1, v3

    .line 1423
    .restart local v9       #record:Ljava/lang/String;
    move-object v5, v9

    .line 1427
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v9           #record:Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    if-eqz v7, :cond_5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1429
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no need to update "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0xc4

    move/from16 v0, p4

    if-ne v0, v12, :cond_4

    const-string v12, "anr"

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1430
    const/4 v10, 0x1

    :goto_3
    move v11, v10

    .line 1449
    .restart local v11       #success:I
    goto :goto_0

    .line 1409
    .end local v11           #success:I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 1410
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    .line 1411
    goto :goto_1

    .line 1429
    :cond_4
    const-string v12, "email"

    goto :goto_2

    .line 1433
    :cond_5
    sparse-switch p4, :sswitch_data_1

    .line 1441
    const/4 v10, 0x0

    .line 1443
    :goto_4
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update new record "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " oldrecord : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1444
    :catch_0
    move-exception v2

    .line 1445
    .local v2, e:Ljava/lang/RuntimeException;
    const/4 v10, 0x0

    .line 1446
    const-string v12, "GSM"

    const-string v13, "update usim record failed"

    invoke-static {v12, v13, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1435
    .end local v2           #e:Ljava/lang/RuntimeException;
    :sswitch_2
    :try_start_1
    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 1436
    goto :goto_4

    .line 1438
    :sswitch_3
    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrFile(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 1439
    goto :goto_4

    .line 1403
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch

    .line 1433
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_3
        0xca -> :sswitch_2
    .end sparse-switch
.end method
