.class public Lcom/xiaomi/passport/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Ll:Lcom/xiaomi/passport/a/d;

.field private static Lm:Lcom/xiaomi/passport/a/a;

.field private static Ln:Lcom/xiaomi/passport/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OO()Lcom/xiaomi/passport/a/d;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/b;->Ll:Lcom/xiaomi/passport/a/d;

    return-object v0
.end method

.method public static OP(Landroid/content/Context;)Lcom/xiaomi/passport/a/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/b;->Lm:Lcom/xiaomi/passport/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/b;->Lm:Lcom/xiaomi/passport/a/a;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/a/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/a/b;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static OQ()Lcom/xiaomi/passport/h;
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/i;->PX()Lcom/xiaomi/passport/h;

    move-result-object v0

    return-object v0
.end method

.method public static OR()Lcom/xiaomi/passport/a/c;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/b;->Ln:Lcom/xiaomi/passport/a/c;

    return-object v0
.end method

.method public static OS(Lcom/xiaomi/passport/h;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/passport/i;->PY(Lcom/xiaomi/passport/h;)V

    return-void
.end method

.method public static OT(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/n;->aeH(Lcom/xiaomi/accountsdk/request/a;)V

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/v;->afr(Lcom/xiaomi/accountsdk/request/a;)V

    return-void
.end method

.method public static OU(Lcom/xiaomi/passport/a/d;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/passport/b;->Ll:Lcom/xiaomi/passport/a/d;

    return-void
.end method

.method public static OV(Lcom/xiaomi/passport/a/a;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/passport/b;->Lm:Lcom/xiaomi/passport/a/a;

    return-void
.end method

.method public static OW(Lcom/xiaomi/passport/a/c;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/passport/b;->Ln:Lcom/xiaomi/passport/a/c;

    return-void
.end method
