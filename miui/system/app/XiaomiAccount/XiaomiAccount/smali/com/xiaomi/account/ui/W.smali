.class final Lcom/xiaomi/account/ui/W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic en:Lcom/xiaomi/account/ui/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/W;->en:Lcom/xiaomi/account/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lmiui/widget/DatePicker;III)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/W;->en:Lcom/xiaomi/account/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/W;->en:Lcom/xiaomi/account/ui/c;

    const v2, 0x7f0c00fb

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/ui/W;->en:Lcom/xiaomi/account/ui/c;

    invoke-static {v1, v0}, Lcom/xiaomi/account/ui/c;->U(Lcom/xiaomi/account/ui/c;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xiaomi/account/ui/W;->en:Lcom/xiaomi/account/ui/c;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/account/ui/W;->en:Lcom/xiaomi/account/ui/c;

    sget-object v2, Lcom/xiaomi/account/data/UploadProfileType;->kV:Lcom/xiaomi/account/data/UploadProfileType;

    invoke-static {v1, v2, v3, v0, v3}, Lcom/xiaomi/account/ui/c;->aa(Lcom/xiaomi/account/ui/c;Lcom/xiaomi/account/data/UploadProfileType;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    goto :goto_0
.end method
