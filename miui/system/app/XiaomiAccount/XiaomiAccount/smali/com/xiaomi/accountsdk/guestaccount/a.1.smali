.class public Lcom/xiaomi/accountsdk/guestaccount/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/guestaccount/b;


# instance fields
.field private final Of:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/a;->Of:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public TR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/a;->Of:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/h;->ads(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TS()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/a;->Of:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/e;->add()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/a;->Of:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/h;->adr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iZ()Lcom/xiaomi/accountsdk/guestaccount/data/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
