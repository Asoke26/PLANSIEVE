SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND p.Score >= 21
AND u.Reputation >= 1855
AND u.UpVotes >= 119
AND u.UpVotes <= 300

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;