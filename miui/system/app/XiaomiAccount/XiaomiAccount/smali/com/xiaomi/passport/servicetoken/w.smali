.class final Lcom/xiaomi/passport/servicetoken/w;
.super Lcom/xiaomi/passport/servicetoken/z;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/servicetoken/z",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic IG:Lcom/xiaomi/passport/servicetoken/t;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/t;Landroid/content/Context;Lcom/xiaomi/accountsdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/w;->IG:Lcom/xiaomi/passport/servicetoken/t;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/servicetoken/z;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method protected ML()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/w;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    invoke-interface {v0}, Lcom/xiaomi/passport/IPassportServiceTokenService;->sv()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic ML()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/w;->ML()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
