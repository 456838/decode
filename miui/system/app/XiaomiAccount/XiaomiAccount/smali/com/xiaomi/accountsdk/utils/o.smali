.class public Lcom/xiaomi/accountsdk/utils/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xiaomi/accountsdk/utils/o;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile ZA:Lcom/xiaomi/accountsdk/utils/o;

.field private static final Zx:Ljava/util/regex/Pattern;


# instance fields
.field public final Zy:I

.field public final Zz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^V(\\d+)\\.(\\d+)\\.\\d+\\.\\d+\\.[A-Z]{7}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/o;->Zx:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/accountsdk/utils/o;->Zy:I

    iput p2, p0, Lcom/xiaomi/accountsdk/utils/o;->Zz:I

    return-void
.end method

.method public static ahZ(Lcom/xiaomi/accountsdk/utils/o;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/o;->aia()Lcom/xiaomi/accountsdk/utils/o;

    move-result-object v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/o;->ahY(Lcom/xiaomi/accountsdk/utils/o;)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static aia()Lcom/xiaomi/accountsdk/utils/o;
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/xiaomi/accountsdk/utils/o;->ZA:Lcom/xiaomi/accountsdk/utils/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/utils/o;->ZA:Lcom/xiaomi/accountsdk/utils/o;

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    sget-object v1, Lcom/xiaomi/accountsdk/utils/o;->Zx:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    new-instance v1, Lcom/xiaomi/accountsdk/utils/o;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/o;-><init>(II)V

    sput-object v1, Lcom/xiaomi/accountsdk/utils/o;->ZA:Lcom/xiaomi/accountsdk/utils/o;

    return-object v1
.end method

.method private aib()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/accountsdk/utils/o;->Zy:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/o;->Zz:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public ahY(Lcom/xiaomi/accountsdk/utils/o;)I
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "another == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/o;->aib()I

    move-result v0

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/o;->aib()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/accountsdk/utils/o;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/o;->ahY(Lcom/xiaomi/accountsdk/utils/o;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Lcom/xiaomi/accountsdk/utils/o;

    if-nez v2, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/xiaomi/accountsdk/utils/o;

    iget v2, p0, Lcom/xiaomi/accountsdk/utils/o;->Zy:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/o;->Zy:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/xiaomi/accountsdk/utils/o;->Zz:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/o;->Zz:I

    if-ne v2, v3, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/accountsdk/utils/o;->Zy:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/o;->Zz:I

    add-int/2addr v0, v1

    return v0
.end method
