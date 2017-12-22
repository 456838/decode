.class public Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;
.super Ljava/lang/Object;
.source "BaseUtf16.java"


# static fields
.field private static final BitsRange:[[I

.field private static final Utf16Range:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-array v0, v6, [[I

    const/16 v1, 0xfff

    filled-new-array {v3, v1}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x1000

    const/16 v2, 0x5fff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x6000

    const/16 v2, 0x7fff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->BitsRange:[[I

    .line 9
    new-array v0, v6, [[I

    const/16 v1, 0x3400

    const/16 v2, 0x43ff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x4e00

    const v2, 0x9dff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0xb000

    const v2, 0xcfff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->Utf16Range:[[I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([C)[B
    .locals 18
    .param p0, "chars"    # [C

    .prologue
    .line 46
    if-eqz p0, :cond_2

    move-object/from16 v0, p0

    array-length v15, v0

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    :goto_0
    const-string/jumbo v16, "chars is null or empty"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->validate(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    move-object/from16 v0, p0

    array-length v6, v0

    .line 48
    .local v6, "len":I
    add-int/lit8 v15, v6, -0x1

    aget-char v5, p0, v15

    .line 49
    .local v5, "lastChar":I
    const/16 v15, 0x61

    if-le v5, v15, :cond_3

    const/16 v15, 0x71

    if-ge v5, v15, :cond_3

    add-int/lit8 v10, v5, -0x61

    .line 51
    .local v10, "padding":I
    :goto_1
    if-nez v10, :cond_4

    move v14, v6

    .line 52
    .local v14, "utf16Len":I
    :goto_2
    mul-int/lit8 v15, v14, 0xf

    sub-int v2, v15, v10

    .line 54
    .local v2, "bitLen":I
    add-int/lit8 v15, v2, 0x4

    div-int/lit8 v12, v15, 0x8

    .line 55
    .local v12, "resultLen":I
    new-array v11, v12, [B

    .line 56
    .local v11, "result":[B
    const/4 v15, 0x0

    invoke-static {v11, v15}, Ljava/util/Arrays;->fill([BB)V

    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, "i":I
    const/4 v13, 0x0

    .line 60
    .local v13, "s":I
    :goto_3
    if-ge v4, v14, :cond_5

    .line 61
    aget-char v3, p0, v4

    .line 62
    .local v3, "c":C
    sget-object v15, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->Utf16Range:[[I

    invoke-static {v15, v3}, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->getIndex([[II)I

    move-result v1

    .line 63
    .local v1, "bi":I
    sget-object v15, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->Utf16Range:[[I

    aget-object v15, v15, v1

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-int v15, v3, v15

    sget-object v16, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->BitsRange:[[I

    aget-object v16, v16, v1

    const/16 v17, 0x0

    aget v16, v16, v17

    add-int v15, v15, v16

    shl-int/lit8 v9, v15, 0x1

    .line 64
    .local v9, "ori":I
    ushr-int/lit8 v7, v13, 0x3

    .line 65
    .local v7, "n":I
    and-int/lit8 v8, v13, 0x7

    .line 67
    .local v8, "ni":I
    aget-byte v15, v11, v7

    add-int/lit8 v16, v8, 0x8

    ushr-int v16, v9, v16

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v11, v7

    .line 68
    add-int/lit8 v15, v7, 0x1

    if-ge v15, v12, :cond_0

    add-int/lit8 v15, v7, 0x1

    rsub-int/lit8 v16, v8, 0x8

    shl-int v16, v9, v16

    ushr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v11, v15

    .line 69
    :cond_0
    const/4 v15, 0x1

    if-le v8, v15, :cond_1

    add-int/lit8 v15, v7, 0x2

    if-ge v15, v12, :cond_1

    add-int/lit8 v15, v7, 0x2

    rsub-int/lit8 v16, v8, 0x10

    shl-int v16, v9, v16

    ushr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v11, v15

    .line 71
    :cond_1
    add-int/lit8 v13, v13, 0xf

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 46
    .end local v1    # "bi":I
    .end local v2    # "bitLen":I
    .end local v3    # "c":C
    .end local v4    # "i":I
    .end local v5    # "lastChar":I
    .end local v6    # "len":I
    .end local v7    # "n":I
    .end local v8    # "ni":I
    .end local v9    # "ori":I
    .end local v10    # "padding":I
    .end local v11    # "result":[B
    .end local v12    # "resultLen":I
    .end local v13    # "s":I
    .end local v14    # "utf16Len":I
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 49
    .restart local v5    # "lastChar":I
    .restart local v6    # "len":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 51
    .restart local v10    # "padding":I
    :cond_4
    add-int/lit8 v14, v6, -0x1

    goto :goto_2

    .line 74
    .restart local v2    # "bitLen":I
    .restart local v4    # "i":I
    .restart local v11    # "result":[B
    .restart local v12    # "resultLen":I
    .restart local v13    # "s":I
    .restart local v14    # "utf16Len":I
    :cond_5
    return-object v11
.end method

.method public static encode([B)[C
    .locals 15
    .param p0, "bytes"    # [B

    .prologue
    .line 12
    if-eqz p0, :cond_2

    array-length v12, p0

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    const-string/jumbo v13, "bytes is null or empty"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->validate(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    array-length v12, p0

    mul-int/lit8 v1, v12, 0x8

    .line 15
    .local v1, "bitLen":I
    rem-int/lit8 v5, v1, 0xf

    .line 16
    .local v5, "left":I
    if-nez v5, :cond_3

    div-int/lit8 v11, v1, 0xf

    .line 18
    .local v11, "utf16Len":I
    :goto_1
    if-nez v5, :cond_4

    const/4 v12, 0x0

    :goto_2
    add-int/2addr v12, v11

    new-array v7, v12, [C

    .line 19
    .local v7, "result":[C
    const/4 v9, 0x0

    .line 20
    .local v9, "start":I
    const/4 v4, 0x0

    .line 21
    .local v4, "i":I
    :goto_3
    if-ge v4, v11, :cond_5

    .line 22
    ushr-int/lit8 v6, v9, 0x3

    .line 23
    .local v6, "n":I
    and-int/lit8 v8, v9, 0x7

    .line 25
    .local v8, "sm":I
    aget-byte v12, p0, v6

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v8, 0x18

    shl-int v2, v12, v13

    .line 26
    .local v2, "bs":I
    add-int/lit8 v12, v6, 0x1

    array-length v13, p0

    if-ge v12, v13, :cond_0

    add-int/lit8 v12, v6, 0x1

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v8, 0x10

    shl-int/2addr v12, v13

    add-int/2addr v2, v12

    .line 27
    :cond_0
    add-int/lit8 v12, v6, 0x2

    array-length v13, p0

    if-ge v12, v13, :cond_1

    add-int/lit8 v12, v6, 0x2

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v8, 0x8

    shl-int/2addr v12, v13

    add-int/2addr v2, v12

    .line 29
    :cond_1
    ushr-int/lit8 v3, v2, 0x11

    .line 30
    .local v3, "c":I
    sget-object v12, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->BitsRange:[[I

    invoke-static {v12, v3}, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->getIndex([[II)I

    move-result v0

    .line 31
    .local v0, "bi":I
    sget-object v12, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->BitsRange:[[I

    aget-object v12, v12, v0

    const/4 v13, 0x0

    aget v12, v12, v13

    sub-int v12, v3, v12

    sget-object v13, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->Utf16Range:[[I

    aget-object v13, v13, v0

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v10, v12, v13

    .line 32
    .local v10, "uc":I
    int-to-char v12, v10

    aput-char v12, v7, v4

    .line 34
    add-int/lit8 v9, v9, 0xf

    .line 35
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 12
    .end local v0    # "bi":I
    .end local v1    # "bitLen":I
    .end local v2    # "bs":I
    .end local v3    # "c":I
    .end local v4    # "i":I
    .end local v5    # "left":I
    .end local v6    # "n":I
    .end local v7    # "result":[C
    .end local v8    # "sm":I
    .end local v9    # "start":I
    .end local v10    # "uc":I
    .end local v11    # "utf16Len":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 16
    .restart local v1    # "bitLen":I
    .restart local v5    # "left":I
    :cond_3
    div-int/lit8 v12, v1, 0xf

    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "utf16Len":I
    goto :goto_1

    .line 18
    :cond_4
    const/4 v12, 0x1

    goto :goto_2

    .line 38
    .restart local v4    # "i":I
    .restart local v7    # "result":[C
    .restart local v9    # "start":I
    :cond_5
    if-eqz v5, :cond_6

    .line 39
    rsub-int/lit8 v12, v5, 0x70

    int-to-char v12, v12

    aput-char v12, v7, v4

    .line 42
    :cond_6
    return-object v7
.end method

.method private static getIndex([[II)I
    .locals 3
    .param p0, "array"    # [[I
    .param p1, "c"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 86
    aget-object v1, p0, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p1, v1, :cond_0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ge p1, v1, :cond_0

    .line 87
    return v0

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static varargs validate(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    if-nez p0, :cond_2

    .line 79
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 80
    .local v0, "errMsg":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errMsg":Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_2
    return-void
.end method
