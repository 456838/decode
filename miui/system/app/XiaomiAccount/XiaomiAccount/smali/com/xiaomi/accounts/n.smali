.class public final Lcom/xiaomi/accounts/n;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final Ta()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/accounts/n;->Tb(I)I

    move-result v0

    return v0
.end method

.method public static final Tb(I)I
    .locals 1

    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method
