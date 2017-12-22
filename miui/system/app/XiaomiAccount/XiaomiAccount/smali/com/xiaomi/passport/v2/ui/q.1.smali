.class final Lcom/xiaomi/passport/v2/ui/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/utils/d;


# instance fields
.field final synthetic DK:Lcom/xiaomi/passport/v2/ui/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KA(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "success_to_get_activator_phone"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    const v1, 0x7f0c007b

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->Ib(Lcom/xiaomi/passport/v2/ui/a;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/passport/v2/ui/a;->Ia(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method public KB()V
    .locals 3

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "failed to get activate phone or no sim card"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "no_activator_phone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->Iv(Z)V

    return-void
.end method

.method public KC(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "success_to_get_activator_phone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    const v1, 0x7f0c007b

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/a;->Ib(Lcom/xiaomi/passport/v2/ui/a;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/q;->DK:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0, p1}, Lcom/xiaomi/passport/v2/ui/a;->HZ(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method
