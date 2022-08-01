data_kp='data/output_easymocap_trial_17_recording_04/trial_17_recording_04_test_4'
data_track_kp="${data_kp}-track"

python apps/demo/auto_track.py ${data_kp} ${data_track_kp} --track3d --debug \
&& \
python apps/demo/smpl_from_keypoints.py data/output_easymocap_trial_17_recording_04/ --skel3d "${data_track_kp}/keypoints3d" --out "${data_track_kp}/smpl" --verbose --opts smooth_poses 1e-3 --body COCO --gender neutral