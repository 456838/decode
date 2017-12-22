.class final Lcom/xiaomi/account/ui/ba;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic fY:Lcom/xiaomi/account/ui/s;

.field final synthetic fZ:Lmiui/preference/RadioButtonPreferenceCategory;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/s;Lmiui/preference/RadioButtonPreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ba;->fY:Lcom/xiaomi/account/ui/s;

    iput-object p2, p0, Lcom/xiaomi/account/ui/ba;->fZ:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/ba;->fZ:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreferenceCategory;->getCheckedPreference()Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/ba;->fY:Lcom/xiaomi/account/ui/s;

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/s;->cq(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0
.end method
