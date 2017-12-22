.class public abstract Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;
.super Ljava/lang/Object;
.source "StaticSymmetryBaseXCodeMap.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;


# instance fields
.field private final mCodePointBits:I

.field private final mDecodingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncodingMap:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->constructEncodingMap()[C

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->mEncodingMap:[C

    .line 10
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->mEncodingMap:[C

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->buildSymmetryDecodingMapWithEncodingMap([C)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->mDecodingMap:Ljava/util/Map;

    .line 11
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->mEncodingMap:[C

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->calculateCodePointBitsWithEncodingMap([C)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->mCodePointBits:I

    .line 8
    return-void
.end method

.method private static buildSymmetryDecodingMapWithEncodingMap([C)Ljava/util/Map;
    .locals 4
    .param p0, "encodingMap"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v1, "rst":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 36
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    array-length v3, p0

    if-eq v2, v3, :cond_1

    .line 40
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Duplicated entry in the encoding map supplied. "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    return-object v1
.end method

.method private static calculateCodePointBitsWithEncodingMap([C)I
    .locals 4
    .param p0, "encodingMap"    # [C

    .prologue
    const/4 v3, 0x1

    .line 47
    array-length v0, p0

    .line 49
    .local v0, "encodingMapSize":I
    const/4 v1, 0x0

    .line 51
    .local v1, "powerCount":I
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 52
    :goto_0
    if-le v0, v3, :cond_0

    .line 53
    ushr-int/lit8 v0, v0, 0x1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    if-eq v0, v3, :cond_1

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Code map size not a power of 2. "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_1
    return v1
.end method


# virtual methods
.method protected abstract constructEncodingMap()[C
.end method

.method public getCodePointBits()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->mCodePointBits:I

    return v0
.end method

.method public getDecodingMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->mDecodingMap:Ljava/util/Map;

    return-object v0
.end method

.method public getEncodingMap()[C
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;->mEncodingMap:[C

    return-object v0
.end method
