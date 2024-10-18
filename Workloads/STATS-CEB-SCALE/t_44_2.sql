SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 4
AND u.Views = 19
AND u.DownVotes >= 4
AND u.UpVotes >= 36
AND u.UpVotes <= 1346
AND u.CreationDate <= 1125
AND b.Date >= 983
AND b.Date <= 1166

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;