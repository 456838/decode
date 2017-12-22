.class final Lcom/xiaomi/account/ui/aR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic fG:Lcom/xiaomi/account/ui/r;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/r;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aR;->fG:Lcom/xiaomi/account/ui/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aR;->fG:Lcom/xiaomi/account/ui/r;

    invoke-static {v0}, Lcom/xiaomi/account/ui/r;->ch(Lcom/xiaomi/account/ui/r;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/aR;->fG:Lcom/xiaomi/account/ui/r;

    iget-object v1, p0, Lcom/xiaomi/account/ui/aR;->fG:Lcom/xiaomi/account/ui/r;

    invoke-static {v1}, Lcom/xiaomi/account/ui/r;->ch(Lcom/xiaomi/account/ui/r;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/r;->ci(Lcom/xiaomi/account/ui/r;Z)V

    const/4 v0, 0x1

    return v0
.end method
