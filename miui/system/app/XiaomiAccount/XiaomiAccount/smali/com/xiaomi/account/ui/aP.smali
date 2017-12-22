.class final Lcom/xiaomi/account/ui/aP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic fE:Lcom/xiaomi/account/ui/MyDeviceActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/MyDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aP;->fE:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/aP;->fE:Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/MyDeviceListActivity;->f(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
