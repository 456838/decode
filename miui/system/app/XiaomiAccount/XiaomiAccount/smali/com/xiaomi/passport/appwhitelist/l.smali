.class public Lcom/xiaomi/passport/appwhitelist/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static KY:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/l;->KY:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Os()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/l;->KY:Landroid/content/Context;

    return-object v0
.end method

.method public static Ot(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "globalContext == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/l;->KY:Landroid/content/Context;

    return-void
.end method
