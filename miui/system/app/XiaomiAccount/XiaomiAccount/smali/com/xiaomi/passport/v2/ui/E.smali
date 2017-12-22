.class final Lcom/xiaomi/passport/v2/ui/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/ui/i;


# instance fields
.field final synthetic Es:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic Et:Lcom/xiaomi/accountsdk/account/data/r;

.field final synthetic Eu:Landroid/widget/TextView;

.field final synthetic Ev:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/E;->Es:Lcom/xiaomi/passport/v2/ui/c;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/E;->Et:Lcom/xiaomi/accountsdk/account/data/r;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/E;->Eu:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/ui/E;->Ev:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iX(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/E;->Et:Lcom/xiaomi/accountsdk/account/data/r;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/r;->XM(Lcom/xiaomi/accountsdk/account/data/r;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/account/data/s;->XP(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/s;->build()Lcom/xiaomi/accountsdk/account/data/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/E;->Es:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/E;->Eu:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/E;->Ev:Ljava/lang/Runnable;

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/passport/v2/ui/c;->Jd(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method
