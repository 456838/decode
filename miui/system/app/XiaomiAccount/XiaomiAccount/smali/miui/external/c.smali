.class Lmiui/external/c;
.super Landroid/app/DialogFragment;
.source ""


# instance fields
.field private asA:Landroid/app/Dialog;

.field final synthetic asB:Lmiui/external/SdkErrorActivity;


# direct methods
.method public constructor <init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/c;->asB:Lmiui/external/SdkErrorActivity;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p2, p0, Lmiui/external/c;->asA:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lmiui/external/c;->asA:Landroid/app/Dialog;

    return-object v0
.end method
