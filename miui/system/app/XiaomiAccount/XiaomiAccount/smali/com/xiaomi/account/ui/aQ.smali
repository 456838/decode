.class final Lcom/xiaomi/account/ui/aQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/g;


# instance fields
.field final synthetic fF:Lcom/xiaomi/account/ui/MyDeviceActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/MyDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aQ;->fF:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iE(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aQ;->fF:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bR(Lcom/xiaomi/account/ui/MyDeviceActivity;Lcom/xiaomi/account/task/e;)Lcom/xiaomi/account/task/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/aQ;->fF:Lcom/xiaomi/account/ui/MyDeviceActivity;

    const v1, 0x7f0c0152

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/MyDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/aQ;->fF:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bO(Lcom/xiaomi/account/ui/MyDeviceActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/aQ;->fF:Lcom/xiaomi/account/ui/MyDeviceActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "/"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0c0151

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/account/ui/MyDeviceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
