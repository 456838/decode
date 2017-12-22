.class public Lcom/xiaomi/accountsdk/utils/n;
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
        "Lcom/xiaomi/accountsdk/utils/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final Zs:Ljava/util/regex/Pattern;

.field private static volatile Zv:Lcom/xiaomi/accountsdk/utils/n;


# instance fields
.field public final Zt:I

.field public final Zu:I

.field public final Zw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^(\\d)\\.(\\d{1,2})\\.(\\d{1,2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/n;->Zs:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/accountsdk/utils/n;->Zw:I

    iput p2, p0, Lcom/xiaomi/accountsdk/utils/n;->Zu:I

    iput p3, p0, Lcom/xiaomi/accountsdk/utils/n;->Zt:I

    return-void
.end method

.method public static ahV(Lcom/xiaomi/accountsdk/utils/n;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/n;->ahW()Lcom/xiaomi/accountsdk/utils/n;

    move-result-object v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/n;->ahU(Lcom/xiaomi/accountsdk/utils/n;)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static ahW()Lcom/xiaomi/accountsdk/utils/n;
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lcom/xiaomi/accountsdk/utils/n;->Zv:Lcom/xiaomi/accountsdk/utils/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/utils/n;->Zv:Lcom/xiaomi/accountsdk/utils/n;

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    sget-object v1, Lcom/xiaomi/accountsdk/utils/n;->Zs:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    new-instance v1, Lcom/xiaomi/accountsdk/utils/n;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/n;-><init>(III)V

    sput-object v1, Lcom/xiaomi/accountsdk/utils/n;->Zv:Lcom/xiaomi/accountsdk/utils/n;

    return-object v1
.end method

.method private ahX()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/accountsdk/utils/n;->Zt:I

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/n;->Zu:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/n;->Zw:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public ahU(Lcom/xiaomi/accountsdk/utils/n;)I
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "another == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/n;->ahX()I

    move-result v0

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/n;->ahX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/accountsdk/utils/n;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/n;->ahU(Lcom/xiaomi/accountsdk/utils/n;)I

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
    instance-of v2, p1, Lcom/xiaomi/accountsdk/utils/n;

    if-nez v2, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/xiaomi/accountsdk/utils/n;

    iget v2, p0, Lcom/xiaomi/accountsdk/utils/n;->Zw:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/n;->Zw:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/xiaomi/accountsdk/utils/n;->Zu:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/n;->Zu:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/xiaomi/accountsdk/utils/n;->Zt:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/n;->Zt:I

    if-ne v2, v3, :cond_4

    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/accountsdk/utils/n;->Zw:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/n;->Zu:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/n;->Zt:I

    add-int/2addr v0, v1

    return v0
.end method
