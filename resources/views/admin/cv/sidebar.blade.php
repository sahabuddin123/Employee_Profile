<ul class="nav flex-column nav-tabs user-tabs">
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.personal' ? 'active' : '' }}"
         id="edit1" href="{{ route('admin.cv.update.personal', $personals->id) }}">Personal Information</a></li>
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.education' ? 'active' : '' }}"
        id="edit2" href="{{ route('admin.cv.update.education', $personals->id) }}">Education Information</a></li>
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.language' ? 'active' : '' }}"
        id="edit3" href="{{ route('admin.cv.update.language', $personals->id) }}" >Language Information</a></li>
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.traning' ? 'active' : '' }}"
        id="edit4" href="{{ route('admin.cv.update.traning', $personals->id) }}" >Traning Information</a></li>
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.workexp' ? 'active' : '' }}"
        id="edit5" href="{{ route('admin.cv.update.workexp', $personals->id) }}" >Work Experience</a></li>
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.skill' ? 'active' : '' }}"
        id="edit6" href="{{ route('admin.cv.update.skill', $personals->id) }}" >Computer Skills</a></li>
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.empInfo' ? 'active' : '' }}"
        id="edit7" href="{{ route('admin.cv.update.empInfo', $personals->id) }}" >Employee Information</a></li>
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.reference' ? 'active' : '' }}"
        id="edit8" href="{{ route('admin.cv.update.reference', $personals->id) }}" >Reference</a></li>
    <li class="nav-item"><a class="nav-link {{ Route::currentRouteName() == 'admin.cv.update.document' ? 'active' : '' }}"
        id="edit9" href="{{ route('admin.cv.update.document', $personals->id) }}" >Documents</a></li>
</ul>
