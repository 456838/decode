.class public Lcom/xiaomi/finddevice/common/smsencoding/BaseX;
.super Ljava/lang/Object;
.source "BaseX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;
    }
.end annotation


# static fields
.field private static final DEFAULT_CODE_MAP:Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;->getV20150814()Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->DEFAULT_CODE_MAP:Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2
    .param p0, "encodedData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->DEFAULT_CODE_MAP:Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;

    sget-object v1, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->DEFAULT_CODE_MAP:Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;->getCodePointBits()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->decode(Ljava/lang/String;Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)[B
    .locals 1
    .param p0, "encodedData"    # Ljava/lang/String;
    .param p1, "codeMap"    # Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p1}, Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;->getCodePointBits()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->decode(Ljava/lang/String;Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static decode(Ljava/lang/String;Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;I)[B
    .locals 19
    .param p0, "encodedData"    # Ljava/lang/String;
    .param p1, "codeMap"    # Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;
    .param p2, "codePointBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;->getDecodingMap()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    const/4 v15, 0x1

    shl-int v15, v15, p2

    if-eq v14, v15, :cond_0

    .line 95
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 96
    const-string/jumbo v15, "codePointBits does not match the size of the decoding code map. "

    .line 95
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 99
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 100
    .local v8, "encodedChars":[C
    array-length v14, v8

    if-nez v14, :cond_1

    const/4 v14, 0x0

    new-array v14, v14, [B

    return-object v14

    .line 102
    :cond_1
    const/4 v14, 0x0

    aget-char v14, v8, v14

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->getIntCodepoint(CLcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)I

    move-result v11

    .line 103
    .local v11, "remain":I
    if-ltz v11, :cond_2

    move/from16 v0, p2

    if-lt v11, v0, :cond_3

    .line 104
    :cond_2
    new-instance v14, Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;

    const-string/jumbo v15, "Bad header(%s). "

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 105
    const/16 v17, 0x0

    aget-char v17, v8, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    .line 104
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 108
    :cond_3
    array-length v14, v8

    add-int/lit8 v14, v14, -0x1

    mul-int v13, v14, p2

    .line 109
    .local v13, "rstBitsLen":I
    if-eqz v11, :cond_4

    .line 110
    sub-int v7, p2, v11

    .line 111
    .local v7, "emptySpace":I
    sub-int/2addr v13, v7

    .line 113
    .end local v7    # "emptySpace":I
    :cond_4
    div-int/lit8 v14, v13, 0x8

    new-array v12, v14, [B

    .line 115
    .local v12, "rst":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v13, :cond_5

    .line 116
    div-int v14, v9, p2

    add-int/lit8 v3, v14, 0x1

    .line 117
    .local v3, "codepointIndex":I
    rem-int v2, v9, p2

    .line 118
    .local v2, "codepointBitIndex":I
    div-int/lit8 v6, v9, 0x8

    .line 119
    .local v6, "dataByteIndex":I
    rem-int/lit8 v4, v9, 0x8

    .line 121
    .local v4, "dataByteBitIndex":I
    rsub-int/lit8 v14, v4, 0x8

    .line 122
    sub-int v15, p2, v2

    .line 121
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 123
    .local v1, "bitsFill":I
    sub-int v14, v13, v9

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 125
    rsub-int/lit8 v14, v4, 0x8

    sub-int v5, v14, v1

    .line 126
    .local v5, "dataByteBitShift":I
    aget-char v14, v8, v3

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->getIntCodepoint(CLcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)I

    move-result v10

    .line 127
    .local v10, "intCodepoint":I
    aget-byte v14, v12, v6

    .line 128
    move/from16 v0, p2

    invoke-static {v10, v2, v1, v0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->getBitsFromCodepoint(IIII)I

    move-result v15

    shl-int/2addr v15, v5

    .line 127
    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v6

    .line 131
    add-int/2addr v9, v1

    goto :goto_0

    .line 134
    .end local v1    # "bitsFill":I
    .end local v2    # "codepointBitIndex":I
    .end local v3    # "codepointIndex":I
    .end local v4    # "dataByteBitIndex":I
    .end local v5    # "dataByteBitShift":I
    .end local v6    # "dataByteIndex":I
    .end local v10    # "intCodepoint":I
    :cond_5
    return-object v12
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 32
    sget-object v0, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->DEFAULT_CODE_MAP:Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;

    sget-object v1, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->DEFAULT_CODE_MAP:Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;->getCodePointBits()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->encode([BLcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BLcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "codeMap"    # Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;

    .prologue
    .line 36
    invoke-interface {p1}, Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;->getCodePointBits()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->encode([BLcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode([BLcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;I)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "codeMap"    # Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;
    .param p2, "codePointBits"    # I

    .prologue
    .line 41
    invoke-interface {p1}, Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;->getEncodingMap()[C

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    shl-int/2addr v10, p2

    if-eq v9, v10, :cond_0

    .line 42
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string/jumbo v10, "codePointBits does not match the size of the encoding code map. "

    .line 42
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 46
    :cond_0
    array-length v9, p0

    mul-int/lit8 v0, v9, 0x8

    .line 47
    .local v0, "bitLen":I
    if-nez v0, :cond_1

    const-string/jumbo v9, ""

    return-object v9

    .line 49
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v7, "rst":Ljava/lang/StringBuilder;
    rem-int v6, v0, p2

    .line 51
    .local v6, "remain":I
    invoke-static {v6, p1}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->getCharCodepoint(ILcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "codepoint":I
    const/4 v4, 0x0

    .line 55
    .local v4, "codepointBitLen":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 56
    if-lt v4, p2, :cond_2

    .line 57
    invoke-static {v3, p1}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->getCharCodepoint(ILcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 61
    :cond_2
    rem-int/lit8 v9, v5, 0x8

    rsub-int/lit8 v2, v9, 0x8

    .line 62
    .local v2, "bitsRemainInDataByte":I
    sub-int v8, p2, v4

    .line 63
    .local v8, "spaceRemainInCodepoint":I
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64
    .local v1, "bitsFill":I
    shl-int/2addr v3, v1

    .line 65
    div-int/lit8 v9, v5, 0x8

    aget-byte v9, p0, v9

    rem-int/lit8 v10, v5, 0x8

    invoke-static {v9, v10, v1}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->getBitsFromByte(BII)I

    move-result v9

    or-int/2addr v3, v9

    .line 67
    add-int/2addr v4, v1

    .line 68
    add-int/2addr v5, v1

    goto :goto_0

    .line 71
    .end local v1    # "bitsFill":I
    .end local v2    # "bitsRemainInDataByte":I
    .end local v8    # "spaceRemainInCodepoint":I
    :cond_3
    if-lez v4, :cond_4

    .line 72
    sub-int v8, p2, v4

    .line 73
    .restart local v8    # "spaceRemainInCodepoint":I
    shl-int/2addr v3, v8

    .line 74
    invoke-static {v3, p1}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->getCharCodepoint(ILcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    const/4 v4, 0x0

    .line 78
    .end local v8    # "spaceRemainInCodepoint":I
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private static getBitsFromByte(BII)I
    .locals 2
    .param p0, "b"    # B
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 171
    shl-int v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v1, p2, 0x8

    ushr-int/2addr v0, v1

    return v0
.end method

.method private static getBitsFromCodepoint(IIII)I
    .locals 3
    .param p0, "cp"    # I
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "codePointBits"    # I

    .prologue
    .line 166
    const/4 v1, 0x1

    shl-int/2addr v1, p3

    add-int/lit8 v0, v1, -0x1

    .line 167
    .local v0, "codePointMask":I
    shl-int v1, p0, p1

    and-int/2addr v1, v0

    sub-int v2, p3, p2

    ushr-int/2addr v1, v2

    return v1
.end method

.method private static getCharCodepoint(ILcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)C
    .locals 1
    .param p0, "intCodepoint"    # I
    .param p1, "codeMap"    # Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;

    .prologue
    .line 175
    invoke-interface {p1}, Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;->getEncodingMap()[C

    move-result-object v0

    aget-char v0, v0, p0

    return v0
.end method

.method private static getIntCodepoint(CLcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)I
    .locals 6
    .param p0, "charCodepoint"    # C
    .param p1, "codeMap"    # Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-interface {p1}, Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;->getDecodingMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 181
    .local v0, "rst":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 182
    new-instance v1, Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;

    .line 183
    const-string/jumbo v2, "Character %s not in the code set. "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
