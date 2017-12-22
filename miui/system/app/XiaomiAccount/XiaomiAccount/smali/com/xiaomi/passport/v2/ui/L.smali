.class final Lcom/xiaomi/passport/v2/ui/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/v2/utils/e;


# instance fields
.field final synthetic EK:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic EL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/L;->EK:Lcom/xiaomi/passport/v2/ui/c;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/L;->EL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Lc()V
    .locals 3

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "failed to verify activate phone"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/passport/widget/f;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/L;->EK:Lcom/xiaomi/passport/v2/ui/c;

    invoke-virtual {v1}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->zv(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/M;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/ui/M;-><init>(Lcom/xiaomi/passport/v2/ui/L;)V

    const v2, 0x7f0c00a4

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/widget/f;->zA(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/v2/ui/N;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/L;->EL:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/passport/v2/ui/N;-><init>(Lcom/xiaomi/passport/v2/ui/L;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    const v2, 0x7f0c0065

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/widget/f;->zx(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zt()Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->show()V

    return-void
.end method

.method public Ld(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/L;->EK:Lcom/xiaomi/passport/v2/ui/c;

    const-string/jumbo v1, "success_to_verify_activator_phone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Iu(Ljava/lang/String;I)V

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/n;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/n;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/n;->Xt(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/n;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/L;->EK:Lcom/xiaomi/passport/v2/ui/c;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/c;->IC(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    return-void
.end method
