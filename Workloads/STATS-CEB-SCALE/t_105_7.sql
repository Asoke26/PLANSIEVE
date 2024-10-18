SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 14
AND u.Reputation >= 606
AND u.Views >= 1040
AND u.DownVotes >= 91

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;