.class final Lcom/xiaomi/passport/v2/ui/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic DQ:Lcom/xiaomi/passport/v2/ui/a;

.field final synthetic DR:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field final synthetic DS:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/t;->DQ:Lcom/xiaomi/passport/v2/ui/a;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/t;->DR:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/t;->DS:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/t;->DR:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/t;->DQ:Lcom/xiaomi/passport/v2/ui/a;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/a;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/t;->DR:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/utils/c;->Ll(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/t;->DS:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/t;->DQ:Lcom/xiaomi/passport/v2/ui/a;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/a;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/t;->DS:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/utils/c;->Ll(I)V

    :cond_1
    return-void
.end method
